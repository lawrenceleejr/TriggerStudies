###########################################################################
# SliceDef file for Combined Chains, used to implement TOPOS
###########################################################################
__author__  = 'E. Pianori'
__doc__="Definition of topological cuts for combined chains"

from AthenaCommon.Logging import logging
logging.getLogger().info("Importing %s",__name__)
logCombined = logging.getLogger("TriggerMenu.combined.CombinedChainsDef")

from copy import deepcopy

###########################################################################
###########################################################################

def _addTopoInfo(theChainDef,chainDicts,listOfChainDefs,doAtL2AndEF=True): 

    print "*_*_*_*_*_*_*_*_*_*_*_*_*_*_"
    # print chainDicts
    print theChainDef
    # print listOfChainDefs
    print "-----------------"

    maxL2SignatureIndex = -1
    for signatureIndex,signature in enumerate(theChainDef.signatureList):
        if signature['listOfTriggerElements'][0][0:2] == "L2":
            maxL2SignatureIndex = max(maxL2SignatureIndex,signatureIndex)
            
    topoAlgs = chainDicts[0]["topo"]

    if any("dphi" in alg for alg in topoAlgs):
        ##Check that we only have a MET and JET chain
        inputChains=[]
        for ChainPart in chainDicts:
            if 'MET' in ChainPart['signature']  or 'Jet' in ChainPart['signature']:
                inputChains.append(ChainPart['signature'])
        if len(inputChains)<2:
            logCombined.warning("Need a Met and a JET chain to run DPhi Topo cut")        
        else:
            theChainDef=_addDPhiMetJet(theChainDef,chainDicts,listOfChainDefs) 
    if any("razor" in alg for alg in topoAlgs):
        ##Check that we only have a MET and JET chain
        inputChains=[]
        # print "------------*_*_*_*_*_*_*_*_-----------------------"
        for ChainPart in chainDicts:
            # print ChainPart['signature']
            if 'MET' in ChainPart['signature']  or 'Jet' in ChainPart['signature']:
                inputChains.append(ChainPart['signature'])
        if len(inputChains)<2:
            logCombined.warning("Need a Met and a JET chain to run Razor cut")        
        else:
            theChainDef=_addRazor(theChainDef,chainDicts,listOfChainDefs) 
    else:
        logCombined.error("do nothing, intra-signature topological cut not implemented yet")

        
    return theChainDef


##############################################################################
def _addDPhiMetJet(theChainDef,chainDicts,listOfChainDefs): 

    for topo_item in chainDicts[0]['topo']:
        DPhiCut=float(topo_item.split('dphi')[1]) if 'dphi' in topo_item else logCombined.error("No Dphi threshold in topo definition")
    
    JetThr=-1
    for ChainPart in chainDicts:
        if 'Jet' in ChainPart['signature']:
            JetThr=int(ChainPart['chainParts'][0]['threshold'])
            break

    if JetThr==-1:
        logCombined.error("No JET chain part found in DPhiMetJet Topo cut")

    from TrigJetHypo.TrigEFDPhiMetJetAllTEConfig import *

    DPhiMetJet_Hypo = EFDPhiMetJet_Generic("EFDPhiMetJet_J"+str(JetThr).replace(".","")+"_DPhi"+str(DPhiCut).replace(".",""),
                                           dPhiCut=DPhiCut, minJetEt=JetThr,maxDPhiJets=1)
    
    ##Get only the last MET TE
    inputTEsEF = [] 
    for cD in listOfChainDefs: 
        inputTEsEF +=[deepcopy(cD.signatureList[-1]['listOfTriggerElements'])] 
 		         
    inputTEsEF.reverse() # need first met then jet input TE           

    logCombined.debug("Input TEs to DPhi algorithm: %s" % inputTEsEF)

    EFChainName = "EF_" + chainDicts[0]['chainName']
    
    theChainDef.addSequence([DPhiMetJet_Hypo],inputTEsEF,EFChainName)
    theChainDef.addSignature(theChainDef.signatureList[-1]['signature_counter']+1, [EFChainName])    

    return theChainDef



##############################################################################
def _addRazor(theChainDef,chainDicts,listOfChainDefs): 

    for topo_item in chainDicts[0]['topo']:
        RazorCut=float(topo_item.split('razor')[1]) if 'razor' in topo_item else logCombined.error("No Razor threshold in topo definition")
    
    JetThr=-1
    for ChainPart in chainDicts:
        if 'Jet' in ChainPart['signature']:
            JetThr=int(ChainPart['chainParts'][0]['threshold'])
            break

    if JetThr==-1:
        logCombined.error("No JET chain part found in Razor cut")

    from TrigJetHypo.TrigEFRazorAllTEConfig import *

    Razor_Hypo = EFRazor("EFRazor_J"+str(JetThr).replace(".","")+"_Razor"+str(RazorCut).replace(".",""),
                                           Razor_cut=RazorCut)
    
    # ##Get only the last MET TE
    # inputTEsEF = [] 

    # print listOfChainDefs

    # for cD in listOfChainDefs: 
    #     inputTEsEF +=[deepcopy(cD.signatureList[-1]['listOfTriggerElements'])] 
                 
    # inputTEsEF.reverse() # need first met then jet input TE           

    # logCombined.debug("Input TEs to Razor algorithm: %s" % inputTEsEF)
    # print "Input TEs to Razor algorithm: %s" % inputTEsEF

    # from TrigHLTJetHemisphereRec.TrigHLTJetHemisphereRecConfig import TrigHLTJetHemisphereRec_Builder
    # theTrigHLTJetHemisphereRec = TrigHLTJetHemisphereRec_Builder()

    # EFChainName = "EF_" + chainDicts[0]['chainName']
    
    # theChainDef.addSequence([theTrigHLTJetHemisphereRec], inputTEsEF,'TrigHLTJetHemisphereRec')
    # theChainDef.addSequence([Razor_Hypo],inputTEsEF+['TrigHLTJetHemisphereRec'],EFChainName)

    # theChainDef.addSignature(theChainDef.signatureList[-1]['signature_counter']+1, ['TrigHLTJetHemisphereRec'])    
    # theChainDef.addSignature(theChainDef.signatureList[-1]['signature_counter']+1, [EFChainName])    

    # return theChainDef


    inputTEsEFMET = []
    inputTEsEFJet = []


    for sig in theChainDef.signatureList: 
        if "EF" in sig['listOfTriggerElements'][-1] and 'xe' in sig['listOfTriggerElements'][-1] and not( 'step' in sig['listOfTriggerElements'][-1]  ) and not( 'razor' in sig['listOfTriggerElements'][-1]  ):
            inputTEsEFMET.append( sig['listOfTriggerElements'][-1])

    inputTEsEFJet.append( 'EF_full__cluster__antikt4_tc_jes' )

    print inputTEsEFMET
    print inputTEsEFJet

    logCombined.debug("Input TEs to Razor algorithm: %s" % inputTEsEFMET)

    from TrigHLTJetHemisphereRec.TrigHLTJetHemisphereRecConfig import TrigHLTJetHemisphereRec_Builder
    theTrigHLTJetHemisphereRec = TrigHLTJetHemisphereRec_Builder(jetPtCut=20000.)

    EFChainName = "EF_" + chainDicts[0]['chainName']

    theChainDef.addSequence([theTrigHLTJetHemisphereRec], inputTEsEFJet,'TrigHLTJetHemisphereRec')
    theChainDef.addSequence([Razor_Hypo],inputTEsEFMET+['TrigHLTJetHemisphereRec'],EFChainName)

    theChainDef.addSignature(theChainDef.signatureList[-1]['signature_counter']+1, ['TrigHLTJetHemisphereRec'])    
    theChainDef.addSignature(theChainDef.signatureList[-1]['signature_counter']+1, [EFChainName])    

    print "*_*_*_*_*_*_*_*_*_*_******************"
    print theChainDef
    print "-------------------------------"

    return theChainDef


