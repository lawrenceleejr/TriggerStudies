#------------------------------------------------------------------------#
#------------------------------------------------------------------------#
def setupMenu():

    from TriggerMenu.menu.TriggerPythonConfig import TriggerPythonConfig
    from TriggerJobOpts.TriggerFlags          import TriggerFlags
    from AthenaCommon.Logging                 import logging
    log = logging.getLogger( 'TriggerMenu.menu.DC14.py' )

    from TriggerMenu.TriggerConfigLVL1 import TriggerConfigLVL1 as tcl1
    if tcl1.current:
        log.info("L1 items: %s" % tcl1.current.menu.items.itemNames())
    else:
        log.info("L1 menu has not yet been defined or is being read from the DB!")

    # INPUT FORMAT FOR CHAINS:
    # ['chainName', chainCounter, 'L1itemforchain', [L1 items for chainParts], [stream], [groups], EBstep]

    globalStream = 'Main'

    TriggerFlags.Slices_all_setOff()

    TriggerFlags.MuonSlice.signatures = [
        ['mu24_idperf',         13, 'L1_MU20', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        ['mu6_idperf',         14, 'L1_MU6', [],   [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        #L2Star
        ['mu24_L2Star_idperf',        15, 'L1_MU20', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        ['mu6_L2Star_idperf',         16, 'L1_MU6', [],   [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        #Single muon chains
        ['mu26',                12, 'L1_MU20', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        ['mu26_imedium',        1, 'L1_MU20', [],  [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],

        ['mu24',                2, 'L1_MU20', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        ['mu24_imedium',        3, 'L1_MU20', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        ['mu50',                4, 'L1_MU20', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],
        ['mu60_0eta105_msonly', 5, 'L1_MU20', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],

        #Multi muon chains
        ['2mu4',                6, 'L1_2MU4', [],   [globalStream], ['RATE:MultiMuon','BW:Muon'], -1],
        ['2mu6',                7, 'L1_2MU6', [],   [globalStream], ['RATE:MultiMuon','BW:Muon'], -1],
        ['2mu10',               8, 'L1_2MU10', [],  [globalStream], ['RATE:MultiMuon','BW:Muon'], -1],
        ['3mu6',                9, 'L1_3MU6', [],   [globalStream], ['RATE:MultiMuon','BW:Muon'], -1],
        ['2mu14',               10, 'L1_2MU10', [], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1],
        ['mu14_iloose_mu14',    11, 'L1_2MU10', [], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1],

        ##Full scan
        #['mu20_mu8noL1',         17, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,["mu20","mu8noL1"]]],        
        #['mu20_imedium_mu8noL1', 18, 'L1_MU20', ['L1_MU20',""], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_imedium','mu8noL1']]],
        #['mu20_2mu4noL1',        19, 'L1_MU20', ['L1_MU20',""], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20','2mu4noL1']]],
        #['mu20_iloose_mu8noL1',  30, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_iloose','mu8noL1']]],
        #['mu20_iloose_2mu4noL1', 31, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_iloose','2mu4noL1']]],

        ##Full scan
        ['mu20_mu8noL1',         17, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20','mu8noL1']]],        
        ['mu20_iloose_mu8noL1',  18, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_iloose','mu8noL1']]],
        ['mu20_imedium_mu8noL1', 19, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_imedium','mu8noL1']]],
        ['mu20_2mu4noL1',        47, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20','2mu4noL1']]],
        ['mu20_iloose_2mu4noL1', 48, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_iloose','2mu4noL1']]],
        ['mu20_imedium_2mu4noL1',49, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_imedium','2mu4noL1']]],
        ['mu24_mu8noL1',         57, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu24','mu8noL1']]],        
        ['mu24_2mu4noL1',        58, 'L1_MU20', ['L1_MU20',''], [globalStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu24','2mu4noL1']]],
        

        ]


    TriggerFlags.JetSlice.signatures = [
        #Single jet chains        
        ['j400',                100,    'L1_J100',[],  [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j460_a10_L1J100',     101,    'L1_J100',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j200_320eta490',      102,    'L1_J100.32ETA49',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j60',                 103,    'L1_J20',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j110',                104,    'L1_J40',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j150',                105,    'L1_J75',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j200',                106,    'L1_J100',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j260',                107,    'L1_J100',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        ['j330',                108,    'L1_J100',[], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],        
        #Multjet chains
        ['3j175',               109,    'L1_J100',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['4j100',               110,    'L1_3J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],        
        ['5j85',                111,    'L1_4J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        #HT chains
        ['j200_ht1000',       112,    'L1_J100', [], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1, ['serial',-1,['j200','ht1000']]],
        #['ht1000_L1J100',       112,    'L1_J100', [], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        #
        ['j30_muvtx',           113,    'L1_2MU10', [], [globalStream], ['RATE:SingleMuon','BW:Muon'], -1],

        #Partial scan
        ['j200_PS', 114, 'L1_J100', [], [globalStream], ['RATE:SingleJet', 'BW:Jets'], -1],         
        ['3j175_PS', 115, 'L1_J100', [], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1], 

        ]

    TriggerFlags.BjetSlice.signatures =  [
        ['j55_bperf',                    20,    'L1_J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j45_bperf_3j45',               21,    'L1_3J15',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j45_bperf_3j45_L13J15.ETA24',  22,    'L1_3J15.ETA24',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j45_bperf_3j45_L13J20',        23,    'L1_3J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        #['j55_EFID_bperf',               24,    'L1_J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j175_bmedium',                 25,    'L1_J100',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- J100 
        ['j75_bmedium_3j75',             26,    'L1_4J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1], #<- 4J20 
        ['2j55_bmedium_2j55',            27,    'L1_4J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- 4J20 
        ['2j45_bmedium_3j45',            28,    'L1_5J15.ETA24',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j175_bmedium_j60_bmedium',     29,    'L1_J100',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j300_bloose',                  30,    'L1_J100',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        
        # chains with EDIF
        ['j55_bperf_EFID',               32,    'L1_J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j45_bperf_EFID_3j45',          33,    'L1_3J15',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j45_bperf_EFID_3j45_L13J15.ETA24',  34,    'L1_3J15.ETA24',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j45_bperf_EFID_3j45_L13J20',        35,    'L1_3J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j175_bmedium_EFID',                 36,    'L1_J100',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- J100 
        ['j75_bmedium_EFID_3j75',             37,    'L1_4J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1], #<- 4J20 
        ['2j55_bmedium_EFID_2j55',            38,    'L1_4J20',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- 4J20 
        ['2j45_bmedium_EFID_3j45',            39,    'L1_5J15.ETA24',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j175_bmedium_EFID_j60_bmedium_EFID', 40,    'L1_J100',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        ['j300_bloose_EFID',                   41,    'L1_J100',[], [globalStream], ['RATE:MultiJet', 'BW:Jets'], -1],    

        ]

    TriggerFlags.METSlice.signatures = [       
        #['xe50noL1_l2fsperf',                   380,    '',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        #['xe50noL1_l2fsperf_',                   380,    '',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],        
        ['xe50',                            350,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe50_cell',                       351,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],        
        ####--- Run L2 algos
        ['xe50_l2fsperf',                   352,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe50_l2fsperf_cell',              353,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],        
        ###Muon corrections to FEB MET-use L2_mu8
        ['xe50_l2fsperf_wEFMuFEB',           354,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe50_l2fsperf_wEFMuFEB_cell',      355,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],                
        ###Muon correction to FEB and to EF MET -use EF_mu8
        ['xe50_l2fsperf_wEFMuFEB_wEFMu',     356,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe50_l2fsperf_wEFMuFEB_wEFMu_cell',357,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],

        ##Other thresolds:
        ['xe70',                            358,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe70_cell',                       359,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],    
        ####--- Run L2 algos
        ['xe70_l2fsperf',                   360,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],    
        ['xe70_l2fsperf_cell',              374,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],        
        ###Muon corrections to FEB MET-use L2_mu8
        ['xe70_l2fsperf_wEFMuFEB',           375,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe70_l2fsperf_wEFMuFEB_cell',      376,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],                
        ###Muon correction to FEB and to EF MET -use EF_mu8
        ['xe70_l2fsperf_wEFMuFEB_wEFMu',     379,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe70_l2fsperf_wEFMuFEB_wEFMu_cell',378,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        
        ['xe100',                           361,    'L1_XE70',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe100_cell',                      362,    'L1_XE70',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],        
        ['xe100_l2fsperf',                  363,    'L1_XE70',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],

        
        ###PU suppression####
        ['xe50_pueta',                            364,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        #--- Run L2 algos
        ['xe50_l2fsperf_pueta',                   365,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ##Muon corrections to FEB MET-use EF_mu8
        ['xe50_l2fsperf_wEFMuFEB_pueta',           366,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        
        ###Muon correction to FEB and to EF MET -use EF_mu8
        ['xe50_l2fsperf_wEFMuFEB_wEFMu_pueta',     367,    'L1_XE35',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],

        ##Other thresolds:
        ['xe70_pueta',                            368,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe70_l2fsperf_pueta',                   369,    'L1_XE50',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],    
        
        ['xe100_pueta',                           370,    'L1_XE70',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe100_l2fsperf_pueta',                  371,    'L1_XE70',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],

        ##Rerun chains
        ['xe0noL1_l2fsperf',                      372,    '',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],
        ['xe0noL1_l2fsperf_cell',                 373,    '',[], [globalStream], ['Rate:MET', 'BW:MET'], -1],


        ]

    TriggerFlags.TauSlice.signatures = [
        ['tau20_r1medium1',              5123,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau20_r1perf',                 5124,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau20_r1_idperf',              5125,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],

        ['tau25_medium1_calo',           5126,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_medium1_track',          5127,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_medium1_ptonly',         5128,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_medium1_caloonly',       5129,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_medium1_trackonly',      5130,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_medium1_mvonly',         5131,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_r1perf',                 5132,          'L1_TAU12', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_r1perf_L1TAU6',          5133,          'L1_TAU6',  [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_medium1_mvonly_L1TAU6',  5134,          'L1_TAU6',  [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_perf',                   5122,          'L1_TAU12', [], ['Tau'], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_r1perf_L1TAU8',          5233,          'L1_TAU8',  [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_medium1_mvonly_L1TAU8',  5234,          'L1_TAU8',  [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_perf_L1TAU6',            5121,          'L1_TAU6', [], ['Tau'], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_perf_L1TAU8',            5120,          'L1_TAU8', [], ['Tau'], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau25_ptonly_idperf',          5119,          'L1_TAU12', [], ['Tau'], ['RATE:SingleTau', 'BW:Tau'], -1],

        ['tau29_r1medium1',              5135,          'L1_TAU20', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau29_r1perf',                 5136,          'L1_TAU20', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau35_medium1_calo',           5137,          'L1_TAU20', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau35_medium1_track',          5138,          'L1_TAU20', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau35_medium1_ptonly',         5139,          'L1_TAU20', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau35_r1perf',                 5140,          'L1_TAU20', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau35_perf',                   5147,          'L1_TAU20', [], ['Tau'], ['RATE:SingleTau', 'BW:Tau'], -1],

        ['tau80_medium1_calo',           5141,          'L1_TAU40', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau80_medium1_track',          5142,          'L1_TAU40', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau125_r1medium1',             5143,          'L1_TAU60', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau125_medium1_calo',          5144,          'L1_TAU60', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau125_medium1_track',         5145,          'L1_TAU60', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        ['tau125_r1perf',                5146,          'L1_TAU60', [], [globalStream], ['RATE:SingleTau', 'BW:Tau'], -1],

        ['tau125_perf',                  5150,          'L1_TAU60', [], ['Tau'], ['RATE:SingleTau', 'BW:Tau'], -1],


        ]

    TriggerFlags.EgammaSlice.signatures = [
       # chainname: [chaincounter, stream, group, bw, prescale, pass through, rerun (to be set to 0 for all), eBstep]
        # single electron chains
        # Et cut only chains
        ['e5_etcut',                120,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        #['e15_etcut',               121,          'L1_EM12', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e15_etcut_L1EM7V',          121,          'L1_EM7V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e25_etcut',               122,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e35_etcut',               123,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e45_etcut',               124,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e55_etcut',               125,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e65_etcut',               126,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e80_etcut',               127,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e100_etcut',              128,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e120_etcut',              129,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 

        # Cut-based Run1 PID chains
        # Loose chains with etcut variations
        ['e5_loose1',               130,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e15_loose1',              131,          'L1_EM12', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e15_loose1_L1EM7V',         131,          'L1_EM7V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e25_loose1',              132,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e35_loose1',              133,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e45_loose1',              134,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e55_loose1',              135,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e65_loose1',              136,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e80_loose1',              137,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e100_loose1',             138,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #needed for exotics background estimation --> needs lower prescale than the rest
        ['e120_loose1',             139,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        
        # Single electron Run1 PID
        ['e24_medium1_iloose',       140, 'L1_EM18VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e24_loose1_L1EM20V',       141, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e24_medium1_L1EM20V',      142, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e24_tight1_L1EM20V',       143, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e24_loose1',               144, 'L1_EM18VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e24_loose1_L1EM18VHI',     145, 'L1_EM18VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e24_loose1_L1EM18VHIrel',  146, 'L1_EM18VHIrel', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e28_tight1_iloose',        147, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e28_tight1_iloose_L1EM22VHI',    148, 'L1_EM22VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e28_tight1_iloose_L1EM20VHI',    149, 'L1_EM20VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e26_tight1_iloose',        150, 'L1_EM22VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e24_tight1_iloose_L1EM20VHI',    151, 'L1_EM20VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e60_medium1',              152, 'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e60_loose1',               153, 'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 

        # Rerun mode triggers to support Run1 PID chains
        ['e18_loose1',           155,          'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_loose1',           156,          'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e12_loose1_L1EM3',     157,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        #['e9_loose1',            158,          'L1_EM6', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e9_loose1_L1EM7V',       158,          'L1_EM7V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e7_medium1',           159,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e12_medium1',          160,          'L1_EM8VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_medium1',          161,          'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e5_tight1',            162,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e9_tight1',            163,          'L1_EM6', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e14_tight1',           164,          'L1_EM12', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e9_tight1_L1EM3',      163,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e14_tight1_L1EM7V',    164,          'L1_EM7V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e4_etcut',             165,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e9_etcut',             166,          'L1_EM6', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['e14_etcut',            167,          'L1_EM12', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e9_etcut_L1EM3',       166,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e14_etcut_L1EM7V',     167,          'L1_EM7V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e28_loose1_iloose',    168,          'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],

        # Tracking tune chains for Run1 PID
        ['e28_tight1_iloose_L2StarA',        169, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e28_tight1_iloose_L2StarB',        172, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e28_tight1_iloose_L2StarC',        173, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e28_tight1_L2Star_idperf',         174, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e28_tight1_idperf',                175, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        
        # low-ET single electron triggers in rerun mode
        ['e5_lhtight', 171, 'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e5_lhtight_idperf', 227, 'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e5_lhtight_L2Star_idperf', 228, 'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e5_tight1_idperf', 229, 'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e5_tight1_L2Star_idperf', 230, 'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 

        # Rerun mode triggers to support LH PID chains
        ['e18_lhloose',           176,          'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_lhloose',           177,          'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e12_lhloose_L1EM3',     178,          'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        #['e9_lhloose',           178,          'L1_EM6', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e9_lhloose_L1EM7V',     179,          'L1_EM7V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e28_lhloose_iloose',    180,          'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        
        # Single electron Run2 cut-based PID
        ['e24_medium_iloose',       170, 'L1_EM18VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #In Physics Menu 
        ['e24_loose_L1EM20V',       181, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e24_medium_L1EM20V',      182, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e24_tight_L1EM20V',       183, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e28_tight_iloose',        184, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #Run2 baseline 
        ['e28_tight_iloose_L2StarA',185, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e60_medium',              186, 'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        
        # /single electron LH ID chains
        ['e24_lhmedium_iloose',       187, 'L1_EM18VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], 
        ['e24_lhloose_L1EM20V',       188, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #L1_EM20V
        ['e24_lhmedium_L1EM20V',      189, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #L1_EM20V
        ['e24_lhtight_L1EM20V',       190, 'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #L1_EM20V
        ['e28_lhtight_iloose',        191, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #L1_EM18VH
        ['e28_lhtight_iloose_L2StarA',192, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #L1_EM18VH
        ['e28_lhtight_iloose_L2StarB',193, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e28_lhtight_iloose_L2StarC',194, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e28_lhtight_L2Star_idperf', 195, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e28_lhtight_idperf',        196, 'L1_EM24VHI', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e60_lhmedium',              197, 'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1], #L1_EM50
        
        # multi-electron chains
        # Run1 PID       
        ['2e12_loose1',             377, 'L1_2EM8VH', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['2e17_loose1',             789, 'L1_2EM15VH', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['2e17_loose1_L12EM15V',    876, 'L1_2EM15V', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e28_loose1_iloose_e12_loose1_L1EM3',  199, 'L1_EM24VHI', ['L1_EM24VHI','L1_EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1], 
        ['e18_loose1_2e9_loose1_L1EM7V',   200, 'L1_EM15VH_3EM7V', ['L1_EM15VH','L1_2EM7V'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],                                                      

        # LH PID
        ['2e17_lhloose',            201, 'L1_2EM15VH', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e28_lhloose_iloose_e12_lhloose_L1EM3',202, 'L1_EM24VHI', ['L1_EM24VHI','L1_EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1], 
        ['e18_lhloose_2e9_lhloose_L1EM7V', 203, 'L1_EM15VH_3EM7V', ['L1_EM15VH','L1_2EM7V'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1], 

        # Multielectron chains with m_ee cut for Run1 PID
        ['e5_tight1_e4_etcut',        210,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_tight1_e4_etcut_Jpsiee', 211,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_tight1_L2StarA_e4_etcut_L2StarA_Jpsiee', 212,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_tight1_L2StarB_e4_etcut_L2StarB_Jpsiee', 213,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_tight1_L2StarC_e4_etcut_L2StarC_Jpsiee', 214,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_tight1_L2Star_idperf_e4_etcut_L2Star_idperf_Jpsiee', 215,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_tight1_idperf_e4_etcut_idperf_Jpsiee',   216,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e9_tight1_e4_etcut_Jpsiee', 217,      'L1_2EM3_EM6', ['L1_EM6','L1_2EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e5_tight1_e9_etcut_Jpsiee', 218,      'L1_2EM3_EM6', ['L1_EM3','L1_EM6'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e14_tight1_e4_etcut_Jpsiee', 219,      'L1_2EM3_EM12', ['L1_EM12','L1_2EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e5_tight1_e14_etcut_Jpsiee', 220,      'L1_2EM3_EM12', ['L1_EM12','L1_2EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e9_tight1_L1EM3_e4_etcut_Jpsiee', 217,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e9_etcut_L1EM3_e5_tight1_Jpsiee', 218,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1], 
        ['e14_tight1_L1EM7V_e4_etcut_Jpsiee', 219,      'L1_EM7V_2EM3', ['L1_EM7V','L1_EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e14_etcut_L1EM7V_e5_tight1_Jpsiee', 220,      'L1_EM7V_2EM3', ['L1_EM7V','L1_EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1], 


        # Multielectron chains with m_ee cut for Run1 PID
        ['e5_lhtight_e4_etcut_Jpsiee',                 221,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_lhtight_L2StarA_e4_etcut_L2StarA_Jpsiee', 222,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_lhtight_L2StarB_e4_etcut_L2StarB_Jpsiee', 223,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_lhtight_L2StarC_e4_etcut_L2StarC_Jpsiee', 224,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_lhtight_L2Star_idperf_e4_etcut_L2Star_idperf_Jpsiee', 225,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ['e5_lhtight_idperf_e4_etcut_idperf_Jpsiee',   226,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],

        # Et cut only photon chains
        #['g12_etcut',               230,          'L1_EM7V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['g20_etcut_L1EM15V',        231,          'L1_EM15V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g25_etcut',               232,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g35_etcut',               233,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g40_etcut',               234,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g50_etcut',               235,          'L1_EM20V', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g60_etcut',               236,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g80_etcut',               237,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g100_etcut',              238,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        #['g120_etcut',              239,          'L1_EM50', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],


        # Photon cut-based Run1 PID chains
        # Loose chains for low ET physics and background estimation
        ['g12_loose1_L1EM7V',        240,          'L1_EM7V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g20_loose1_L1EM15V',       241,          'L1_EM15V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g25_loose1_L1EM15V',       242,          'L1_EM15V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g35_loose1_L1EM15V',       243,          'L1_EM15V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g40_loose1',               244,          'L1_EM20V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g50_loose1',               245,          'L1_EM20V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g60_loose1',               246,          'L1_EM50', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],### needed also in rerun mode!!!!
        ['g80_loose1',               247,          'L1_EM50', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g100_loose1',              248,          'L1_EM50', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        
        # Run 2 Baseline chains
        ['g120_loose1',              250,  'L1_EM50', [], [globalStream], ['RATE:SinglePhoton','BW:Egamma'], -1],
        ['g140_loose1',              251,  'L1_EM50', [], [globalStream], ['RATE:SinglePhoton','BW:Egamma'], -1],

        # multi-photon chains Run-1 PID
        ['g35_loose1_g25_loose1',            252, 'L1_2EM15VH', [], [globalStream], ['RATE:MultiPhoton','BW:Egamma'], -1],
        ['g35_medium1_g25_medium1',          253, 'L1_2EM15VH', [], [globalStream], ['RATE:MultiPhoton','BW:Egamma'], -1],
        ['g35_medium1_g25_medium1_L12EM15V', 877, 'L1_2EM15V',  [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1], 
        ['2g20_tight1',                      254, 'L1_2EM15VH', [], [globalStream], ['RATE:MultiPhoton','BW:Egamma'], -1],
        ['3g20_loose1',                      255, 'L1_2EM15VH', [], [globalStream], ['RATE:MultiPhoton','BW:Egamma'], -1],

        # Rerun mode trigger to support combined chains
        ['g4_etcut',                 260,          'L1_EM3', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g8_etcut',                 261,          'L1_EM3', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g8_etcut_L1EM7V',          262,          'L1_EM7V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        #['g9_etcut',                 263,          'L1_EM6', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        #['g14_etcut',                264,          'L1_EM12', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        #['g9_etcut_L1EM3',           265,          'L1_EM3', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        #['g14_etcut_L1EM7V',         266,          'L1_EM7V', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g25_loose1',               265,          'L1_EM15VH', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g25_medium1_L1EM3',        266,          'L1_EM3', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1], 
        ['g35_loose1',               267,          'L1_EM15VH', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g35_medium1',              268,          'L1_EM15VH', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g12_loose1',               269,          'L1_EM8VH', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g20_loose1',               270,          'L1_EM15VH', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        ['g20_tight1',               271,          'L1_EM15VH', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],

        # e/g Combined + mass cut Chains ### should these become instead of 'Egamma' --> 'Combined' ???
        # J/psi
        ###['e5_tight1_g4_etcut', 280,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],### added to combined chains
        #['e5_tight1_g4_etcut_Jpsiee', 280,      'L1_2EM3', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e9_tight1_g4_etcut_Jpsiee', 281,      'L1_2EM3_EM6', ['L1_EM6','L1_2EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e5_tight1_g9_etcut_Jpsiee', 282,      'L1_EM3_EM6', ['L1_EM6','L1_2EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e14_tight1_g4_etcut_Jpsiee', 283,      'L1_2EM3_EM12', ['L1_EM12','L1_2EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        #['e5_tight1_g14_etcut_Jpsiee', 284,      'L1_2EM3_EM12', ['L1_EM12','L1_2EM3'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        
        # Zee ### should these become instead of 'Egamma' --> 'Combined' ???
        #['e28_tight1_iloose_g8_etcut_Zeg', 285, 'L1_EM24VHI', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],
        ###['e28_tight1_iloose_g8_etcut', 286, 'L1_EM24VHI', [], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],### added to combined chains
        ###['e17_loose1_2g8_etcut', 287, 'L1_EM15VH_3EM7V', ['L1_EM15VH','L1_3EM7V'], [globalStream], ['RATE:MultiElectron', 'BW:Egamma'], -1],### added to combined chains

        # Fall-back if problem with new tracking
        ['e17_etcut',                        290, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_etcut_L2StarA',                291, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_etcut_L2StarB',                292, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_etcut_L2StarC',                293, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_etcut_L2Star_idperf',          294, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e17_etcut_idperf',                 295, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        
        # perf chains to study L2/EF options ### need development in ElectronDef.py !!!
        ['e0_perf_L1EM15VH', 296, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['e0_L2Star_perf_L1EM15VH', 297, 'L1_EM15VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
        ['g0_perf_L1EM15VH', 298, 'L1_EM15VH', [], [globalStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1], 

        # extra id perf chains
        ['e24_medium1_L2Star_idperf', 286, 'L1_EM18VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
        ['e5_loose1_L2Star_idperf', 288, 'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
        ['e24_medium1_idperf', 289, 'L1_EM18VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
        ['e5_loose1_idperf', 444, 'L1_EM3', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
        ['e24_medium1_iloose_L2StarA', 445, 'L1_EM18VH', [], [globalStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
                                                           
        # technical chain for forward electrons ### please check!!!! should this become instead of 'Egamma' --> 'Combined' ???
        ['e17_loose1_L1EM15VHJ1523ETA49',    299,          'L1_EM15VH_J15.23ETA49', ['L1_EM15VH',''], [globalStream], ['RATE:Combined', 'BW:Egamma'], -1],### waiting for L1 fixes
        ]


    TriggerFlags.BphysicsSlice.signatures = [
        #L1_3MU6 seeded
        ['3mu6_bJpsi',                 300,  'L1_3MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['3mu6_bTau',                  301,  'L1_3MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['3mu6_bDimu',                 302,  'L1_3MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],

        #L1Topo seeded  # temporary changed L1_2MU6_02DR-MU6-MU6 into L1_2MU6 until L1Topo is available. (#104272)
        ['2mu6_bBmumu',                 303, 'L1_2MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu6_bBmumuxv2',              304, 'L1_2MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu6_bBmumux_BcmumuDsloose',  336, 'L1_2MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu6_bJpsimumu',             305, 'L1_2MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu6_bUpsimumu',             306, 'L1_2MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],

        #L1_2MU10 seeded
        ['2mu10_bBmumu',                337, 'L1_2MU10', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu10_bBmumuxv2',             338, 'L1_2MU10', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu10_bBmumux_BcmumuDsloose', 339, 'L1_2MU10', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu10_bJpsimumu',            330, 'L1_2MU10', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['2mu10_bUpsimumu',            331, 'L1_2MU10', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['mu13_mu13_idperf_Zmumu',     335, 'L1_2MU10', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],

        #L1_2MU4 seeded
        ['mu4_iloose_mu4_7invm9_noos', 332, 'L1_2MU4', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        ['mu4_mu4_idperf_bJpsimumu_noid',          333, 'L1_2MU4', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],

        #L1_MU6 seeded
        ['mu6_bJpsi_Trkloose',         334, 'L1_MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        
        # L1_2MU6
        ['2mu6_bDimu', 340,             'L1_2MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1], 
        ['2mu6_bDimu_novtx_noos', 341, 'L1_2MU6', [], [globalStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],          
        ]

    TriggerFlags.CombinedSlice.signatures = [
        ['e17_medium1_mu12', 815, 'L1_EM15VH_MU10', ['L1_EM15VH', 'L1_MU10'], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],#EM24VH
        ['e7_medium1_mu24', 814, 'L1_MU20', ['L1_EM3', 'L1_MU20'], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],#EM24VH
        ['2e12_medium1_mu12', 813, 'L1_2EM8VH_MU10', ['L1_2EM8VH', 'L1_MU10'], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],#EM24VH
        ['e12_medium1_2mu8', 812, 'L1_EM8VH_2MU6', ['L1_EM8VH', 'L1_2MU6'], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],#EM24VH 

        ['g25_medium1_L1EM3_mu24', 810,      'L1_MU20', ['L1_EM3','L1_MU20'], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1, ['parallel',-1,[] ]],
        ['g12_loose1_2mu10_msonly', 809,      'L1_EM8VH_2MU6', ['L1_EM8VH', 'L1_2MU6'], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1, ['parallel',-1,[] ]],

        ['2g20_loose1_mu20noL1', 807,      'L1_2EM15VH', ['L1_2EM15VH', ''], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1, ['serial',-1,['2g20_loose1','mu20noL1'] ]], 
        ['e28_medium1_mu8noL1', 808,  'L1_EM24VHI', ['L1_EM24VHI', ''], [globalStream], ['RATE:ElectronMuon', 'BW:Egamma'], -1, ['serial',-1,['e28_medium1','mu8noL1'] ]],       

        ['e5_tight1_g4_etcut', 811,      'L1_2EM3', [], [globalStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1, ['parallel',-1,[] ]],
        ['e28_medium1_g8_etcut', 805, 'L1_EM24VHI', ['L1_EM24VHI','L1_EM3'], [globalStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1, ['parallel',-1,[] ]],### CHECK L1 Config, if correct L1 item needs to be added
        ['e17_loose1_2g8_etcut_L12EM7V', 287, 'L1_EM15VH_3EM7V',['L1_EM15VH','L1_2EM7V'], [globalStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],
        ['e24_medium1_g25_medium1', 890, 'L1_2EM15VH',[], [globalStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],
        ['e20_medium1_g35_loose1', 891, 'L1_2EM15VH',[], [globalStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],
        ['e20_medium1_2g20_loose1', 892, 'L1_2EM15VH',[], [globalStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],

        

        #MET+X
        ['mu24_xe100noL1_wEFMu',       901, 'L1_MU20',['L1_MU20',''], [globalStream], ['RATE:METMuon', 'BW:Muon'], -1,['serial',-1,["mu24","xe100noL1_wEFMu"]]],
        ['e28_medium1_xe100noL1', 902, 'L1_EM24VHI',['L1_EM24VHI',''], [globalStream], ['RATE:METElectron', 'BW:Egamma'], -1,['serial',-1,["e28_medium1","xe100noL1"]]], 
        ['g60_loose1_xe60noL1',         903, 'L1_EM50',['L1_EM50',''], [globalStream], ['RATE:METElectron', 'BW:Egamma'], -1,['serial',-1,["g60_loose1","xe60noL1"]]],        
        

        ['j100_xe80',              904, 'L1_J40_XE50',['',''], [globalStream], ['RATE:JetMET', 'BW:Jets'], 1, ['serial',-1, ["j100","xe80"]]], 
        ['j80_xe80',               905, 'L1_J40_XE50',['',''], [globalStream], ['RATE:JetMET', 'BW:Jets'], 1, ['serial',-1, ["j80","xe80"]]], 
        ['j80_xe80_dphi1',         878, 'L1_J40_XE50',['',''], [globalStream], ['RATE:JetMET', 'BW:Jets'], 1, ['serial',-1, ["j80","xe80"]]], 


        # TAU+X
        ['tau35_medium1_calo_tau25_medium1_calo',          906, 'L1_TAU20_2TAU12_J25_2J20_3J12',['L1_TAU20','L1_TAU12'], [globalStream], ['RATE:Tau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_calo","tau25_medium1_calo"]]],
        ['e18_loose1_tau25_medium1_calo',                  907, 'L1_EM15VH_2TAU12_J25_2J15_3J12',['L1_EM15VH','L1_TAU12'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau25_medium1_calo"]]],
        ['e18_lhloose_tau25_medium1_calo',                 908, 'L1_EM15VH_2TAU12_J25_2J15_3J12',['L1_EM15VH','L1_TAU12'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau25_medium1_calo"]]],
        ['e18_loose1_tau80_medium1_calo',                  909, 'L1_EM15VH_TAU40_2TAU15',['L1_EM15VH','L1_TAU40'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau80_medium1_calo"]]],
        ['e18_lhloose_tau80_medium1_calo',                 910, 'L1_EM15VH_TAU40_2TAU15',['L1_EM15VH','L1_TAU40'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau80_medium1_calo"]]],
        ['mu14_tau35_medium1_calo',                        911, 'L1_MU10_TAU20',['L1_MU10','L1_TAU20'], [globalStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau35_medium1_calo"]]],
        ['mu14_tau25_medium1_calo',                        912, 'L1_MU10_TAU12_J25_2J12',['L1_MU10','L1_TAU12'], [globalStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau25_medium1_calo"]]],
        ['tau35_medium1_calo_tau25_medium1_calo_xe50',     913, 'L1_TAU20_2TAU12_XE35',['L1_TAU20','L1_TAU12','L1_XE35'], [globalStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_calo","tau25_medium1_calo","xe50"]]],
        ['tau35_medium1_calo_xe70_L1XE45',                 914, 'L1_TAU20_2J20_XE45',['L1_TAU20','L1_XE45'], [globalStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_calo","xe70_L1XE45"]]],
        ['tau35_medium1_ptonly_tau25_medium1_ptonly',      915, 'L1_TAU20_2TAU12_J25_2J20_3J12',['L1_TAU20','L1_TAU12'], [globalStream], ['RATE:Tau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_ptonly","tau25_medium1_ptonly"]]],
        ['e18_loose1_tau25_medium1_ptonly',                916, 'L1_EM15VH_2TAU12_J25_2J15_3J12',['L1_EM15VH','L1_TAU12'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau25_medium1_ptonly"]]],
        ['e18_lhloose_tau25_medium1_ptonly',               917, 'L1_EM15VH_2TAU12_J25_2J15_3J12',['L1_EM15VH','L1_TAU12'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau25_medium1_ptonly"]]],
        ['e18_loose1_tau80_medium1_ptonly',                918, 'L1_EM15VH_TAU40_2TAU15',['L1_EM15VH','L1_TAU40'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau80_medium1_ptonly"]]],
        ['e18_lhloose_tau80_medium1_ptonly',               919, 'L1_EM15VH_TAU40_2TAU15',['L1_EM15VH','L1_TAU40'], [globalStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau80_medium1_ptonly"]]],
        ['mu14_tau35_medium1_ptonly',                      920, 'L1_MU10_TAU20',['L1_MU10','L1_TAU20'], [globalStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau35_medium1_ptonly"]]],
        ['mu14_tau25_medium1_ptonly',                      921, 'L1_MU10_TAU12_J25_2J12',['L1_MU10','L1_TAU12'], [globalStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau25_medium1_ptonly"]]],
        ['tau35_medium1_ptonly_tau25_medium1_ptonly_xe50', 922, 'L1_TAU20_2TAU12_XE35',['L1_TAU20','L1_TAU12','L1_XE35'], [globalStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_ptonly","tau25_medium1_ptonly","xe50"]]],
        ['tau35_medium1_ptonly_xe70_L1XE45',               923, 'L1_TAU20_2J20_XE45',['L1_TAU20','L1_XE45'], [globalStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_ptonly","xe70_L1XE45"]]],

        ]


    TriggerFlags.MinBiasSlice.signatures = [
        ['mb_sptrk', 806, 'L1_RD0_FILLED', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1],
        ['mb_perf_L1MBTS_1', 822, 'L1_MBTS_1', [], [globalStream],["BW:MinBias", "RATE:MinBias"] , -1],
        ['mb_idperf_L1MBTS_2', 823, 'L1_MBTS_2', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1],
        ['mb_sp2000_trk70_hmt', 824, 'L1_TE20', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1],        
        
        ['mb_sp2000_pusup600_trk70_hmt', 836, 'L1_TE20', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1], 
        ['mb_sp2000_pusup600_trk70_hmt_L1TE30', 837, 'L1_TE30', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1], 
        ['mb_sp2000_pusup600_trk70_hmt_L1TE40', 838, 'L1_TE40', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1], 
        ['mb_sp2000_pusup700_trk70_hmt_L1TE30', 839, 'L1_TE30', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1], 
        ['mb_sp2000_pusup700_trk70_hmt_L1TE40', 840, 'L1_TE40', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1], 
 
        ]
    

    ###allL1TAUseeds = ",".join([ x for x in tcl1.current.menu.items.itemNames() if "TAU" in x ])

    TriggerFlags.CalibSlice.signatures   = []

    TriggerFlags.CosmicSlice.signatures  =  []


    TriggerFlags.StreamingSlice.signatures =  [
        ['noalg_mb_L1TE20', 1001, 'L1_TE20', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1], 
        ['noalg_mb_L1TE30', 1002, 'L1_TE30', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1], 
        ['noalg_mb_L1TE40', 1003, 'L1_TE40', [], [globalStream], ["BW:MinBias", "RATE:MinBias"], -1],         

        ]

    TriggerFlags.MonitorSlice.signatures =  []
    #TriggerFlags.GenericSlice.signatures =  []


    # --- list of signatures to be prescaled out in tight mc prescales ---
    ''' PS definition using pattern-matching NOT WORKING when using with Prescales 
    import re
    
    signatureList=[]
    for prop in dir(TriggerFlags):
        if prop[-5:]=='Slice':
            sliceName=prop
            slice=getattr(TriggerFlags,sliceName)
            if slice.signatures():
                signatureList.extend(slice.signatures())
            else:
                log.debug('SKIPPING '+str(sliceName))
    myChains = []
    for sig in signatureList:
        myChains.append(sig[0])

    disablePatterns=[ re.compile('mb_sp'),                     
                      re.compile('mb_perf'),                     
                      ]

    toDisable=[]
    for signature in myChains:
        for pattern in disablePatterns:
            if re.search(pattern,signature):
                toDisable.append(signature)
                break
    log.debug('DISABLE The following chains are disabled in the DC14 tight presacle menu: '+str(toDisable))
    for signature in toDisable:
        Prescales.HLTPrescales_tight_mc_prescale[signature] = [   -1,    0,   -1]

    '''

    
class Prescales:

    # for L1 prescales 
    #   Item name             | Prescale
    #----------------------------------------------------------
    L1Prescales = { }

    # for HLT prescales
    # Signature name  :  [ HLTprescale, HLTpass-through, rerun]
    #   - Prescale values should be a positive integer (default=1)
    #   - If the current pass_through value is non-zero,
    #     the value given here will be used as pass_through rate
    #     Assuming that pass through chains are configured so
    #     in the slice files and won't change. Also prescale
    #     and pass_through will not be used together.
    #   - The default value of pass-through (=0) will be used
    #----------------------------------------------------------
    HLTPrescales = {}


Prescales.L1Prescales = dict([(ctpid,1) for ctpid in Prescales.L1Prescales])  # setting all L1 prescales to 1

Prescales.L1Prescales_loose_mc_prescale  = Prescales.L1Prescales
Prescales.HLTPrescales_loose_mc_prescale = {
    # egamma (Rerun mode triggers to support Run1 PID chains)
    'e18_loose1'            : [    0,    0,   1],
    'e17_loose1'            : [    0,    0,   1],
    'e12_loose1_L1EM3'      : [    0,    0,   1],
    'e9_loose1_L1EM7V'      : [    0,    0,   1],
    'e7_medium1'            : [    0,    0,   1],
    'e12_medium1'           : [    0,    0,   1],
    'e17_medium1'           : [    0,    0,   1],
    'e5_tight1'             : [    0,    0,   1],
    'e9_tight1_L1EM3'       : [    0,    0,   1],
    'e14_tight1_L1EM7V'     : [    0,    0,   1],
    'e4_etcut'              : [    0,    0,   1],
    'e9_etcut_L1EM3'        : [    0,    0,   1],
    'e14_etcut_L1EM7V'      : [    0,    0,   1],
    'e28_loose1_iloose'     : [    0,    0,   1],
    # egamma (low-ET single electron triggers in rerun mode)
    'e5_lhtight'                 : [    0,    0,   1],
    'e5_lhtight_idperf'          : [    0,    0,   1],
    'e5_lhtight_L2Star_idperf'   : [    0,    0,   1],
    'e5_tight1_idperf'           : [    0,    0,   1],
    'e5_tight1_L2Star_idperf'    : [    0,    0,   1],
    # egamma (Rerun mode triggers to support LH PID chains)
    'e18_lhloose'          : [    0,    0,   1],
    'e17_lhloose'          : [    0,    0,   1],
    'e12_lhloose_L1EM3'    : [    0,    0,   1],
    'e9_lhloose_L1EM7V'    : [    0,    0,   1],
    'e28_lhloose_iloose'   : [    0,    0,   1],
    # egamma (Rerun mode trigger to support combined chains)
    'g4_etcut'             : [    0,    0,   1],
    'g8_etcut'             : [    0,    0,   1],
    'g8_etcut_L1EM7V'      : [    0,    0,   1],
    'g25_loose1'           : [    0,    0,   1],
    'g25_medium1_L1EM3'    : [    0,    0,   1],
    'g35_loose1'           : [    0,    0,   1],
    'g35_medium1'          : [    0,    0,   1],
    'g12_loose1'           : [    0,    0,   1],
    'g20_loose1'           : [    0,    0,   1],
    'g20_tight1'           : [    0,    0,   1],
    # minBias prescale
    'mb_sptrk'                             : [    -1,    0,   -1],
    'mb_perf_L1MBTS_1'                     : [    -1,    0,   -1],
    'mb_idperf_L1MBTS_2'                   : [    -1,    0,   -1],
    'mb_sp2000_trk70_hmt'                  : [    -1,    0,   -1],
    'mb_sp2000_pusup600_trk70_hmt'         : [    -1,    0,   -1],
    'mb_sp2000_pusup600_trk70_hmt_L1TE30'  : [    -1,    0,   -1],
    'mb_sp2000_pusup600_trk70_hmt_L1TE40'  : [    -1,    0,   -1],
    'mb_sp2000_pusup700_trk70_hmt_L1TE30'  : [    -1,    0,   -1],
    'mb_sp2000_pusup700_trk70_hmt_L1TE40'  : [    -1,    0,   -1],
    # L1 streamers prescale
    'noalg_mb_L1TE20'                      : [    -1,    0,   -1],
    'noalg_mb_L1TE30'                      : [    -1,    0,   -1],
    'noalg_mb_L1TE40'                      : [    -1,    0,   -1],
    # MET rerun
    'xe0noL1_l2fsperf'      : [    0,    0,   1],
    'xe0noL1_l2fsperf_cell' : [    0,    0,   1],
}


Prescales.L1Prescales_tight_mc_prescale  = Prescales.L1Prescales

Prescales.HLTPrescales_tight_mc_prescale = Prescales.HLTPrescales_tight_mc_prescale = { 
    # egamma (Rerun mode triggers to support Run1 PID chains)
    'e18_loose1'            : [    0,    0,   1],
    'e17_loose1'            : [    0,    0,   1],
    'e12_loose1_L1EM3'      : [    0,    0,   1],
    'e9_loose1_L1EM7V'      : [    0,    0,   1],
    'e7_medium1'            : [    0,    0,   1],
    'e12_medium1'           : [    0,    0,   1],
    'e17_medium1'           : [    0,    0,   1],
    'e5_tight1'             : [    0,    0,   1],
    'e9_tight1_L1EM3'       : [    0,    0,   1],
    'e14_tight1_L1EM7V'     : [    0,    0,   1],
    'e4_etcut'              : [    0,    0,   1],
    'e9_etcut_L1EM3'        : [    0,    0,   1],
    'e14_etcut_L1EM7V'      : [    0,    0,   1],
    'e28_loose1_iloose'     : [    0,    0,   1],
    # egamma (low-ET single electron triggers in rerun mode)
    'e5_lhtight'                 : [    0,    0,   1],
    'e5_lhtight_idperf'          : [    0,    0,   1],
    'e5_lhtight_L2Star_idperf'   : [    0,    0,   1],
    'e5_tight1_idperf'           : [    0,    0,   1],
    'e5_tight1_L2Star_idperf'    : [    0,    0,   1],
    # egamma (Rerun mode triggers to support LH PID chains)
    'e18_lhloose'          : [    0,    0,   1],
    'e17_lhloose'          : [    0,    0,   1],
    'e12_lhloose_L1EM3'    : [    0,    0,   1],
    'e9_lhloose_L1EM7V'    : [    0,    0,   1],
    'e28_lhloose_iloose'   : [    0,    0,   1],
    # egamma (Rerun mode trigger to support combined chains)
    'g4_etcut'             : [    0,    0,   1],
    'g8_etcut'             : [    0,    0,   1],
    'g8_etcut_L1EM7V'      : [    0,    0,   1],
    'g25_loose1'           : [    0,    0,   1],
    'g25_medium1_L1EM3'    : [    0,    0,   1],
    'g35_loose1'           : [    0,    0,   1],
    'g35_medium1'          : [    0,    0,   1],
    'g12_loose1'           : [    0,    0,   1],
    'g20_loose1'           : [    0,    0,   1],
    'g20_tight1'           : [    0,    0,   1],
    # minBias prescale
    'mb_sptrk'                             : [    -1,    0,   -1],
    'mb_perf_L1MBTS_1'                     : [    -1,    0,   -1],
    'mb_idperf_L1MBTS_2'                   : [    -1,    0,   -1],
    'mb_sp2000_trk70_hmt'                  : [    -1,    0,   -1],
    'mb_sp2000_pusup600_trk70_hmt'         : [    -1,    0,   -1],
    'mb_sp2000_pusup600_trk70_hmt_L1TE30'  : [    -1,    0,   -1],
    'mb_sp2000_pusup600_trk70_hmt_L1TE40'  : [    -1,    0,   -1],
    'mb_sp2000_pusup700_trk70_hmt_L1TE30'  : [    -1,    0,   -1],
    'mb_sp2000_pusup700_trk70_hmt_L1TE40'  : [    -1,    0,   -1],
    # L1 streamers prescale
    'noalg_mb_L1TE20'                      : [    -1,    0,   -1],
    'noalg_mb_L1TE30'                      : [    -1,    0,   -1],
    'noalg_mb_L1TE40'                      : [    -1,    0,   -1],
    # MET prescale
    'xe0noL1_l2fsperf'                     : [   -1,    0,   -1],
    'xe0noL1_l2fsperf_cell'                : [   -1,    0,   -1],
    # XE35 seeded prescale
    'xe50'                               : [   -1,    0,   -1],
    'xe50_cell'                          : [   -1,    0,   -1],
    'xe50_l2fsperf'                      : [   -1,    0,   -1],
    'xe50_l2fsperf_cell'                 : [   -1,    0,   -1],
    'xe50_l2fsperf_wEFMuFEB'             : [   -1,    0,   -1],
    'xe50_l2fsperf_wEFMuFEB_cell'        : [   -1,    0,   -1],
    'xe50_l2fsperf_wEFMuFEB_wEFMu'       : [   -1,    0,   -1],
    'xe50_l2fsperf_wEFMuFEB_wEFMu_cell'  : [   -1,    0,   -1],
    # TAU6 seeded prescale
    'tau25_r1perf_L1TAU6'                : [   -1,    0,   -1],
    'tau25_medium1_mvonly_L1TAU6'        : [   -1,    0,   -1],
    # MU6 seeded rerun
    'mu6_idperf'         : [   0,    0,   1],
    'mu6_L2Star_idperf'  : [   0,    0,   1],
    }

StreamConfig = { }

