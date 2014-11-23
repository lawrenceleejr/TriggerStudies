"""Provide a  look up tables that connects logical algortihm names to
factory functions and arguments.

The table is used to determine the function to used to return an Algorithm
proxy object."""

try:
    from AthenaCommon.SystemOfUnits import GeV
except ImportError:
    GeV = 1000.


class Alg(object):
    """Proxy class for ATLAS python configuration class (APCC). Can
    by converted to an APCC using an instantiator."""

    def __init__(self, factory, args, kargs, manual_attrs={}):
        """Hold the information needed to construct a string that can be
        passed to eval() to instantiate a python object to control an ATLAS
        Athena algorithm.

        This decouples assemblying the information to instantiate the python
        object from thre instantiation.

        This indirection allows the configuration code to be run in a mode
        wher no such objects are created, which allows, e.g., for development
        to be done when if instantiation is not possible, or for debug purposes
        where the creation string can be examined.

        The following information is stored:
        - the factory function (usally the class name) 
        used to obtain an instance of the Athena Alg python class

        - arguments which can be passed to teh construtor as *list or **kwds

        - "manual_attributes " which are set post instantiation using
        the dot operator (ie a.sttr_name = attr_value). The attribute
        values themselves will be passed to eval before setting them in
        the newly instantiated object."""

        # factory function used to instantiate the APCC. Usually the class
        # name of the APCC
        self.factory = factory

        # arguments and keyword arguments for the factory function
        n_args = []
        for a in args:
            try:
                n_args.append(int(a))
            except ValueError:
                try:
                    n_args.append(float(a))
                except ValueError:
                    n_args.append(a)

        self.args = tuple(n_args)

        self.kargs = []
        for k in sorted(kargs.keys()):
            self.kargs.append('%s=%s' % (k, kargs[k]))

        self.manual_attrs = manual_attrs

    def getName(self):
        return self.factory

    def __repr__(self):
        return self.factory

    def __str__(self):
        text = [self.factory]
        text.extend(['arg: %s' % a for a in self.args])
        text.extend(['karg: %s' % k for k in self.kargs])
        text.extend(['manual attr: %s' % k for k in self.manual_attrs])
        return '\n'.join(text)

    def asString(self):
        args = list(self.args)
        args.extend(self.kargs)
        args = [str(a) for a in args]
        args = ', '.join(args)
        # import pdb; pdb.set_trace()
        s = '%s(%s)' % (self.factory, args)
        return s


# alg_dict supplies the algorithms to which names are assigned.
# this allows for changes in algorithms to be coherently propogated
# to all the algorithm clients.

def _l15_unpacking_TT():
    return Alg('T2L1Unpacking_TT', (), {})

def _l15_antikt4_TT_em():
    return Alg('T2CaloFastJet_a4TT', (), {})

def _l15_antikt4_TT_had():
    return Alg('T2CaloFastJet_a4TT_JESCalib', (), {})

def _l15_antikt10_TT_em():
    return Alg('T2CaloFastJet_a10TT', (), {})

def _roi():
    return Alg('DummyAlgo', ('"RoiCreator"',), {})

def _l15_hypo_implicit0(menu_data):

    hypo = menu_data.hypo_params
    assert len(hypo.jet_attributes) == 1

    etaMin = hypo.jet_attributes[0].eta_min
    etaMax = hypo.jet_attributes[0].eta_max
    
    kargs = {'multiplicity': len(hypo.jet_attributes),
             'l2_thrs': [j.threshold * GeV for j in hypo.jet_attributes],
             'etaMin': etaMin,
             'etaMax': etaMax}

    str_mult = hypo.jet_attributes_tostring()

    return Alg('L2FullScanMultiJetAllTE',
               ('"L2JetAllTE_FullScan_l15_%s"' % str_mult,),
               kargs)

def _l15_hypo_implicit1(menu_data):

    hypo = menu_data.hypo_params

    etaMin = hypo.jet_attributes[0].eta_min
    etaMax = hypo.jet_attributes[0].eta_max

    kargs = {'multiplicity': len(hypo.jet_attributes),
             'l2_thrs': [j.threshold * GeV for j in hypo.jet_attributes],
             'etaMin': etaMin,
             'etaMax': etaMax}

    str_mult = hypo.jet_attributes_tostring()
    return Alg('L2FullScanMultiJetAllTE',
               ('"L2JetAllTE_FullScan_l15_%s"' % str_mult,),
               kargs)

def _jetrec(menu_data):
    """Instantiate a python object for TrigHLTJetRec. Incoming
    fex_data is of type MenuData"""

    cluster_params = menu_data.cluster_params
    fex_params = menu_data.fex_params
    merge_param_str = str(fex_params.merge_param).zfill(2)
    
    cluster_calib = "'LC'" if cluster_params.do_lc else "'EM'"
    name = "'TrigHLTJetRec_%s%s'" % (fex_params.fex_type,
                                     merge_param_str)
    kwds = {
        'name': name,
        'merge_param': "'%s'" % merge_param_str,
        'do_jes': fex_params.do_jes,
        'cluster_calib': cluster_calib,
    }

    return Alg('TrigHLTJetRec_param', (), kwds)

def _jr_hypo_single(menu_data):

    hd = menu_data.hypo_params
    assert len(hd.jet_attributes) == 1
    ja = hd.jet_attributes[0]

    chain_name = hd.chain_name
    chain_name = chain_name.replace("_boffperf","")
    chain_name = chain_name.replace("_bperf","")
    chain_name = chain_name.replace("_split","")
    chain_name = chain_name.replace("_EFID","")

    arg0 = '"EFJetHypo_ef_%s"' % chain_name
    etaMin = str(ja.eta_min)
    etaMax = str(ja.eta_max)
    kargs = {}
    
    args = [arg0, str(GeV * ja.threshold), etaMin, etaMax]
    
    return Alg('EFJetHypo', args, kargs)

def _jr_hypo_multi(menu_data):

    hypo = menu_data.hypo_params

    etaMin = hypo.jet_attributes[0].eta_min
    etaMax = hypo.jet_attributes[0].eta_max
    
    kargs = {'multiplicity': len(hypo.jet_attributes),
             'ef_thrs': [j.threshold * GeV for j in hypo.jet_attributes],
             'etaMin': etaMin,
             'etaMax': etaMax,
    }

    str_mult = hypo.jet_attributes_tostring()

    return Alg(
        'EFCentFullScanMultiJetHypo',
        ('"EFjetHypo_ef_%s"' % str_mult,),
        kargs)

def _jr_hypo_LArNoiseBurst(params):

    assert len(params.hypo_data) == 1
    hd = params.hypo_data[0]

    return Alg('EFJetHypoNoiseConfig',
               ('"EFJetHypoNoise_%s"' % hd.sig, str(GeV * hd.threshold)),
               {})

def _jr_hypo_LArNoiseBurstT(params):

    assert len(params.hypo_data) == 1
    hd = params.hypo_data[0]

    return Alg('EFJetHypoNoiseConfig',
               ('"EFJetHypoNoise_%s"' % hd.sig,
                str(GeV * hd.threshold)),
               {})

def _superRoIMaker():
    factory = 'SeededAlgo'
    return Alg(factory,
               (),
               {'UseRoiSizes':False,'EtaHalfWidth':0.5,'PhiHalfWidth':0.5})

def _cellMaker_superPS_topo():
    return Alg('TrigCaloCellMaker_jet_super',
               ('"CellMakerSuperPartialCalo_topo"',
                'doNoise=0',
                'AbsE=True'),
               {})

def _cellMaker_fullcalo_topo():
    return Alg('TrigCaloCellMaker_jet_fullcalo',
               ('"CellMakerFullCalo_topo"',
                'doNoise=0',
                'AbsE=True',
                'doPers=True'),
               {})

def _topoClusterMaker_partial(do_lc):
    
    return Alg('TrigCaloClusterMaker_topo',
               ('"TrigCaloClusterMaker_topo_partialscan"',),
               {'doMoments': True,
                'doLC': do_lc})

def _topoClusterMaker_fullcalo(do_lc):

    return Alg('TrigCaloClusterMaker_topo',
               ('"TrigCaloClusterMaker_topo_fullscan"',),
               {'doMoments': True,
                'doLC': do_lc})

def _roiDiagnostics(params):
    factory = 'TrigHLTRoIDiagnostics'
    return Alg(factory, (), {})

def _jetRecDiagnostics(params):
    chain_name = params.chain_name
    factory = 'TrigHLTJetDiagnostics_named'
    kwds = {'name': "'TrigHLTJetDiagnostics_%s'" % chain_name,
            'chain_name': "'%s'" % chain_name}
    return Alg(factory, (), kwds)

def _jetHypoDiagnostics(params):
    chain_name = params.chain_name
    factory = 'TrigHLTHypoDiagnostics_named'
    kwds = {'name': "'TrigHLTHypoDiagnostics_%s'" % chain_name,
            'chain_name': "'%s'" % chain_name}
    return Alg(factory, (), kwds)


def _clusterDiagnostics(params):
    chain_name = params.chain_name
    factory = 'TrigHLTClusterDiagnostics_named'
    kwds = {'name': "'TrigHLTClusterDiagnostics_%s'" % chain_name,
            'chain_name': "'%s'" % chain_name}
    return Alg(factory, (), kwds)


def _cellDiagnostics(params):
    chain_name = params.chain_name
    factory = 'TrigHLTCellDiagnostics_named'
    kwds = {'name': "'TrigHLTCellDiagnostics_%s'" % chain_name,
            'chain_name': "'%s'" % chain_name}
    return Alg(factory, (), kwds)


def _energyDensityAlg(do_lc):

    factory = 'TrigHLTEnergyDensity_p'

    # cluster_calib is a string that will be used to label the PseudoJetGetter
    # which is used by the offline software.
    # The name of the PSG will be '%sTopo' % cluster_calib.
    # The possible names are in JetContainerInfo.h (maybe in the JetOnput
    # enum?). And thus limited to a finite set of values. "LC" and "EM"
    # are strings in this set.

    name, cluster_calib = {
        True: ("'TrigHLTEnergyDensity_lcw'", "'LC'"),
        False: ("'TrigHLTEnergyDensity_em'", "'EM'")}.get(do_lc)
    kwds = {'name':  name,
            'cluster_calib': cluster_calib}
    
    return Alg(factory, (), kwds)


def _dataScoutingAlg1():
    factory = 'ScoutingStreamWriter'
    manual_attrs ={
    'CollectionTypeName': "['xAOD::JetContainer_v1#HLT_TrigHLTJetRec', 'xAOD::JetTrigAuxContainer_v1#HLT_TrigHLTJetRecAux']"} 

    return Alg(factory, ("'MuonCosmicDataScouting'",), {}, manual_attrs)


def _dataScoutingAlg2():
    factory = 'ScoutingStreamWriter'
    manual_attrs ={
    'CollectionTypeName': "['xAOD::JetContainer_v1#HLT_TrigHLTJetRec', 'xAOD::JetTrigAuxContainer_v1#HLT_TrigHLTJetRecAux']"} 

    return Alg(factory, ("'MuonCosmicDataScouting'",), {}, manual_attrs)


# look up table for function to use to construct a
# Algorithm proxy object.
alg_dispatcher = {
    'l15_unpacking_TT': _l15_unpacking_TT,
    'l15_antikt4_TT_em': _l15_antikt4_TT_em,
    'l15_antikt4_TT_had': _l15_antikt4_TT_had,
    'l15_antikt10_TT_em': _l15_antikt10_TT_em,
    'roi': _roi,
    'superRoIMaker': _superRoIMaker,

    # CellMaker care about fullcalo can be optimized for full or RoI retrieval
    'cellMaker_superPS_topo': _cellMaker_superPS_topo,
    'cellMaker_fullcalo_topo': _cellMaker_fullcalo_topo,

    # look into why topocluster_maker cares whether it is full calo PS 5/3/2014
    'topoClusterMaker_partial': _topoClusterMaker_partial,
    'topoClusterMaker_fullcalo': _topoClusterMaker_fullcalo,

    'l15_hypo_implicit0': _l15_hypo_implicit0,
    'l15_hypo_implicit1': _l15_hypo_implicit1,

    # partial scan does not yet - use full scan until available PS 5/3/2014
    'jetrec': _jetrec,
    # 'jr_antikt4_tc': jr_antikt4_tc,
    # 'jr_antikt10_tc': jr_antikt10_tc,
    'jr_hypo_single': _jr_hypo_single,
    'jr_hypo_multi': _jr_hypo_multi,
    'jetRecDiagnostics': _jetRecDiagnostics,
    'jetHypoDiagnostics': _jetHypoDiagnostics,
    'clusterDiagnostics': _clusterDiagnostics,
    'cellDiagnostics': _cellDiagnostics,
    'roiDiagnostics': _roiDiagnostics,
    'energyDensityAlg': _energyDensityAlg,
    'dataScoutingAlg1': _dataScoutingAlg1,
    'dataScoutingAlg2': _dataScoutingAlg2,
    }




# old code....
 # NEEDS UPDATING FOR ETA RANGE HANDLING
 # def jr_hypo_testCleaning(params):
 # 
 #     assert len(params.hypo_data) == 1
 #     hd = params.hypo_data[0]
 # 
 #     if hd.eta_region == 'j':
 #         factory = 'EFJetHypo_doBasicCleaning'
 #         arg0 = '"EFJetHypo_doBasicCleaning_%s"' % hd.sig
 #     elif hd.eta_region == 'fj':
 #         factory = 'EFFwdJetHypo_doBasicCleaning'
 #         arg0 = '"EFFwdJetHypo_doBasicCleaning_%s"' % hd.sig
 #     else:
 #         assert False
 # 
 #     return Alg(factory, (arg0, str(GeV * hd.threshold)), {})
 # 
 # 
