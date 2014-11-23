import TriggerMenu.menu.Physics_pp_v5 as physics_menu

from TriggerJobOpts.TriggerFlags          import TriggerFlags
from copy                                 import deepcopy



from AthenaCommon.Logging import logging
log = logging.getLogger( 'MC_pp_v5.py' )


#---------------------------------------------------------------------
# Just copy the MC v3 menu with empty HLT
#---------------------------------------------------------------------
def setupMenu():

    physics_menu.setupMenu()

    PhysicsStream="Main"

    # ------------------------------------------------
    # INPUT FORMAT FOR CHAINS:
    # ------------------------------------------------
    # ['chainName', chainCounter, 'L1itemforchain', [L1 items for chainParts], [stream], [groups], EBstep]


    TriggerFlags.MuonSlice.signatures = []#TriggerFlags.MuonSlice.signatures() + [

        # #rerun chain

        # #Single muon chains
        # ['mu24_idperf',         820, 'L1_MU20', [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],
        # ['mu6_idperf',          799, 'L1_MU6',  [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],
        # ['mu24_L2Star_idperf',  850, 'L1_MU20', [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],
        # ['mu6_L2Star_idperf',   851, 'L1_MU6',  [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],

        # ['mu26_imedium',        821, 'L1_MU20', [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],

        # ['mu24',                816, 'L1_MU20', [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],
        # ['mu24_imedium',        817, 'L1_MU20', [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],
        # ['mu50',                718, 'L1_MU20', [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],
        # ['mu60_0eta105_msonly', 819, 'L1_MU20', [], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],

        # #Multi muon chains
        # ['2mu4',                721, 'L1_2MU4',  [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1],
        # ['2mu6',                722, 'L1_2MU6',  [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1],
        # ['2mu10',               723, 'L1_2MU10', [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1],
        # ['3mu6',                725, 'L1_3MU6',  [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1],
        # ['2mu14',               724, 'L1_2MU10', [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1],
        # ['mu14_iloose_mu14',    818, 'L1_2MU10', [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1],


        # #Full Scan
        # ['mu20_mu8noL1',         727, 'L1_MU20', ['L1_MU20',''], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,["mu20","mu8noL1"]]],        
        # ['mu20_imedium_mu8noL1', 726, 'L1_MU20', ['L1_MU20',""], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_imedium','mu8noL1']]],
        # ['mu20_2mu4noL1',        728, 'L1_MU20', ['L1_MU20',""], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20','2mu4noL1']]],
        # ['mu20_iloose_mu8noL1',  744, 'L1_MU20', ['L1_MU20',''], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_iloose','mu8noL1']]],
        # ['mu20_iloose_2mu4noL1', 745, 'L1_MU20', ['L1_MU20',''], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], -1,['serial',-1,['mu20_iloose','2mu4noL1']]],        
        # ['mu0noL1_fsperf' ,       59,  ''      , [], [PhysicsStream], ['Rate:SingleMuon', 'BW:Muon'], 1],

        # # #FS muons
        # #['mu20_mu8noL1',         727, 'L1_MU20', ['L1_MU20',''], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], 1,['serial',-1,["mu20","mu8noL1"]]],        
        # #['mu20_imedium_mu8noL1', 726, 'L1_MU20', ['L1_MU20',""], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], 1,['serial',-1,['mu20_imedium','mu8noL1']]],
        # #['mu20_2mu4noL1',        728, 'L1_MU20', ['L1_MU20',""], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], 1,['serial',-1,['mu20','2mu4noL1']]],
        # #['mu20_iloose_mu8noL1',  744, 'L1_MU20', ['L1_MU20',''], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], 1,['serial',-1,['mu20_iloose','mu8noL1']]],
        # #['mu20_iloose_2mu4noL1', 745, 'L1_MU20', ['L1_MU20',''], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], 1,['serial',-1,['mu20_iloose','2mu4noL1']]],

        # # #T&P chains
        # # #['mu24_imedium_mu20noL1_msonly', 729, 'L1_MU20', [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], 1],        
        # # #['mu24_imedium_mu20noL1_msonly', 730, 'L1_MU20', [], [PhysicsStream], ['RATE:MultiMuon','BW:Muon'], 1],       

        # ]

    TriggerFlags.JetSlice.signatures = []#TriggerFlags.JetSlice.signatures() + [
        # ['j400',                100,    'L1_J100', [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j460_a10_L1J100',     101,    'L1_J100', [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j200_320eta490',      102,    'L1_J100.32ETA49',[], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j60',                 103,    'L1_J20',  [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j110',                105,    'L1_J50',  [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j150',                106,    'L1_J75',  [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j200',                107,    'L1_J100', [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j260',                108,    'L1_J100', [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j330',                109,    'L1_J100', [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],        
        # ['3j175',               110,    'L1_J100', [], [PhysicsStream], ['RATE:MultiJet',  'BW:Jets'], -1],
        # ['4j100',               111,    'L1_3J50', [], [PhysicsStream], ['RATE:MultiJet',  'BW:Jets'], -1],
        # ['5j85',                112,    'L1_4J20', [], [PhysicsStream], ['RATE:MultiJet',  'BW:Jets'], -1],
        # ['ht1000_L1J100',        99,    'L1_J100', [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],
        # ['j30_muvtx',             1,    'L1_2MU10',[], [PhysicsStream], ['RATE:SingleMuon','BW:Muon'], -1],

        # #Partial scan
        # ['j200_PS', 114, 'L1_J100', [], [PhysicsStream], ['RATE:SingleJet', 'BW:Jets'], -1],         
        # ['3j175_PS', 115, 'L1_J100', [], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ]

    TriggerFlags.BjetSlice.signatures = []#TriggerFlags.BjetSlice.signatures() + [
        # ['j55_boffperf',                  8,    'L1_J20',[],  [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j55_boffperf_EFID',             9,    'L1_J20',[],  [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],

        # ['j55_bperf',                    10,    'L1_J20',[],  [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j45_bperf_3j45',               11,    'L1_3J15',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j45_bperf_3j45_L13J150ETA24',  12,    'L1_3J15.0ETA24',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j45_bperf_3j45_L13J20',        13,    'L1_3J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j175_bmedium',                 15,    'L1_J100',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- J100 
        # ['j75_bmedium_3j75',             16,    'L1_4J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1], #<- 4J20 
        # ['2j55_bmedium_2j55',            17,    'L1_4J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- 4J20 
        # ['2j45_bmedium_3j45',            18,    'L1_5J15.0ETA24',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j300_bloose',                  30,    'L1_J100',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],

        # # chains with EDIF
        # ['j55_bperf_EFID',               32,    'L1_J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j45_bperf_EFID_3j45',          33,    'L1_3J15',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j45_bperf_EFID_3j45_L13J150ETA24',  34,    'L1_3J15.0ETA24',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j45_bperf_EFID_3j45_L13J20',        35,    'L1_3J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j175_bmedium_EFID',                 36,    'L1_J100',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- J100 
        # ['j75_bmedium_EFID_3j75',             37,    'L1_4J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1], #<- 4J20 
        # ['2j55_bmedium_EFID_2j55',            38,    'L1_4J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],# <- 4J20 
        # ['2j45_bmedium_EFID_3j45',            39,    'L1_5J15.0ETA24',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j175_bmedium_EFID_j60_bmedium_EFID', 40,    'L1_J100',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j300_bloose_EFID',             41,    'L1_J100',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],

        # # new configurations:
        # ['j55_bperf_split',               42,    'L1_J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],
        # ['j55_bperf_split_EFID',               43,    'L1_J20',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], -1],


        # #Lower priority items: 
        # #['j175_bmedium_j60_bmedium',     14,    'L1_J100',[], [PhysicsStream], ['RATE:MultiJet', 'BW:Jets'], 1],# <- J100 
        # ]

    TriggerFlags.METSlice.signatures = []#TriggerFlags.METSlice.signatures() + [ 
        # #
        # ['xe50',                            350,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        # ['xe50_cell',                       351,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],        
        # #--- Run L2 algos
        # ['xe50_l2fsperf',                   352,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        # ['xe50_l2fsperf_cell',              353,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],        
        # ##Muon corrections to FEB MET-use EF_mu8
        # ['xe50_l2fsperf_wEFMuFEB',           354,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        # ['xe50_l2fsperf_wEFMuFEB_cell',      355,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],                
        # ###Muon correction to FEB MET-use L2_mu8, and to EF MET -use EF_mu8
        # ['xe50_l2fsperf_wEFMuFEB_wEFMu',     356,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        # ['xe50_l2fsperf_wEFMuFEB_wEFMu_cell',357,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        # #w/ Pile-Up suppression
        # ['xe50_pueta',                            364,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],

        # ##Other thresolds:
        # ['xe70',                            358,    'L1_XE50',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        # ['xe70_cell',                       359,    'L1_XE50',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],    
        # ['xe70_l2fsperf',                   360,    'L1_XE50',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],    
        
        # ['xe100',                           361,    'L1_XE70',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        # ['xe100_cell',                      362,    'L1_XE70',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],        
        # ['xe100_l2fsperf',                  363,    'L1_XE70',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        
        ####PU suppression####
        ##['xe50_pueta',                            364,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        ###--- Run L2 algos
        ##['xe50_l2fsperf_pueta',                   365,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        ####Muon corrections to FEB MET-use EF_mu8
        ##['xe50_l2fsperf_wEFMuFEB_pueta',           366,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        ##
        ####Other thresolds:
        ##['xe70_pueta',                            367,    'L1_XE50',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        ##['xe70_l2fsperf_pueta',                   368,    'L1_XE50',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],    
        ##
        ##['xe100_pueta',                           369,    'L1_XE70',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
        ##['xe100_l2fsperf_pueta',                  370,    'L1_XE70',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],


       #  ##Rerun-chains
       #  ['xe0noL1_l2fsperf',                            371,    '',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
       #  ['xe0noL1_l2fsperf_cell',                       372,    '',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],
       #  ['xe0noL1_l2fsperf_pueta',                      373,    '',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], -1],

       
       # ####PU suppression####
       #  #['xe50_pueta',                            364,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],
       #  #--- Run L2 algos
       #  ['xe50_l2fsperf_pueta',                   365,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],
       #  ##Muon corrections to FEB MET-use EF_mu8
       #  ['xe50_l2fsperf_wEFMuFEB_pueta',          366,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],
        
       #  ##Other thresolds:
       #  ['xe70_pueta',                            367,    'L1_XE50',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],
       #  ['xe70_l2fsperf_pueta',                   368,    'L1_XE50',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],    
        
       #  ['xe100_pueta',                           369,    'L1_XE70',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],
       #  ['xe100_l2fsperf_pueta',                  370,    'L1_XE70',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],
        
       #  ####--- cut on FEB MET
       #  ['xe50_L2FS',                        2011,    'L1_XE35',[], [PhysicsStream], ['Rate:MET', 'BW:MET'], 1],
        # ]

    TriggerFlags.TauSlice.signatures = []#TriggerFlags.TauSlice.signatures() + [
        # ['tau20_r1medium1',              5123,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau20_r1perf',                 5124,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau20_r1_idperf',              5125,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_medium1_calo',           5126,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_medium1_track',          5127,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_medium1_ptonly',         5128,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_medium1_caloonly',       5129,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_medium1_trackonly',      5130,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_medium1_mvonly',         5131,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_r1perf',                 5132,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_r1perf_L1TAU6',          5133,          'L1_TAU6',  [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_medium1_mvonly_L1TAU6',  5134,          'L1_TAU6',  [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_perf',                   5135,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_perf_L1TAU6',            5136,          'L1_TAU6',  [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau25_ptonly_idperf',          5137,          'L1_TAU12', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau29_r1medium1',              5138,          'L1_TAU20', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau29_r1perf',                 5139,          'L1_TAU20', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau35_medium1_calo',           5140,          'L1_TAU20', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau35_medium1_track',          5141,          'L1_TAU20', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau35_medium1_ptonly',         5142,          'L1_TAU20', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau35_perf',                   5143,          'L1_TAU20', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau80_medium1_calo',           5144,          'L1_TAU40', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau80_medium1_track',          5145,          'L1_TAU40', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau125_r1medium1',             5146,          'L1_TAU60', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau125_medium1_calo',          5147,          'L1_TAU60', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau125_medium1_track',         5148,          'L1_TAU60', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau125_r1perf',                5149,          'L1_TAU60', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # ['tau125_perf',                  5150,          'L1_TAU60', [], [PhysicsStream], ['RATE:SingleTau', 'BW:Tau'], -1],
        # #['tau160_medium', 123, 'L1_TAU60',[], [PhysicsStream], [], -1]
        # ]


    TriggerFlags.EgammaSlice.signatures = []#TriggerFlags.EgammaSlice.signatures() + [
       # # chainname: [chaincounter, stream, group, bw, prescale, pass through, rerun (to be set to 0 for all), eBstep]

       #  # Et cut only chains
       #  ###### ['e5_etcut',                120,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1], # commented because it's in physics
       #  ['e15_etcut',               121,          'L1_EM7', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e25_etcut',               122,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e35_etcut',               123,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e45_etcut',               124,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e55_etcut',               125,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e65_etcut',               126,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e80_etcut',               127,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e100_etcut',              128,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e120_etcut',              129,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],

       #  # Cut-based Run1 PID chains
       #  # Loose chains with etcut variations
       #  ###### ['e5_loose1',               130,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1], # commented because it's in physics
       #  ['e15_loose1',              131,          'L1_EM7', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e25_loose1',              132,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e35_loose1',              133,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e45_loose1',              134,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e55_loose1',              135,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e65_loose1',              136,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e80_loose1',              137,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e100_loose1',             138,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e120_loose1',             139,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
        
       #  # Single electron Run1 PID
       #  ['e24_medium1_iloose_L1EM18VH',      140, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_loose1_L1EM18VH',              141, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_medium1_L1EM18VH',             142, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_L1EM18VH',              143, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_iloose_L1EM18VH',       144, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_iloose_L1EM20VH',       145, 'L1_EM20VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_iloose',                146, 'L1_EM20VHI', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e26_tight1_iloose',                147, 'L1_EM22VHLIL', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e60_medium1',                      148, 'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e60_loose1',                       149, 'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],

       #  # Rerun mode triggers to support Run1 PID chains
       #  ['e18_loose1',           155,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_loose1',           156,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e12_loose1_L1EM3',     157,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e9_loose1',            158,          'L1_EM7', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e7_medium1',           159,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e12_medium1_L1EM3',    160,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_medium1',          161,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1',            162,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e9_tight1',            163,          'L1_EM7', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e14_tight1',           164,          'L1_EM12', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e4_etcut',             165,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e9_etcut',             166,          'L1_EM7', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e14_etcut',            167,          'L1_EM12', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_loose1_iloose',    168,          'L1_EM20VHI', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_medium1_L1EM15VH', 169,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],

       #  # Tracking tune chains for Run1 PID
       #  ['e24_tight1_iloose_L2StarA_L1EM18VH',        171, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_iloose_L2StarB_L1EM18VH',        172, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_iloose_L2StarC_L1EM18VH',        173, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_L2Star_idperf_L1EM18VH',         174, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight1_idperf_L1EM18VH',                175, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
        
       #  # low-ET single electron triggers in rerun mode
       #  ['e5_lhtight',                  150, 'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
       #  ['e5_lhtight_idperf',           151, 'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
       #  ['e5_lhtight_L2Star_idperf',    152, 'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
       #  ['e5_tight1_idperf',            153, 'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],
       #  ['e5_tight1_L2Star_idperf',     154, 'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], -1],

       #  # Rerun mode triggers to support LH PID chains
       #  ['e18_lhloose',           176,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_lhloose',           177,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e12_lhloose_L1EM3',     178,          'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e9_lhloose',            179,          'L1_EM7', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhloose_iloose',    180,          'L1_EM20VHI', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
        
       #  # Single electron Run2 cut-based PID
       #  ['e24_medium_iloose_L1EM18VH',         170, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_loose_L1EM18VH',                 181, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_medium_L1EM18VH',                182, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight_L1EM18VH',                 183, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight_iloose_L1EM18VH',          184, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight_iloose_L2StarA_L1EM18VH',  185, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight_iloose_L1EM20VH',          186, 'L1_EM20VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_tight_iloose',                   280, 'L1_EM20VHI', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e26_tight_iloose',                   281, 'L1_EM22VHLIL', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e60_medium',                         282, 'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
        
       #  # Single electron LH ID chains
       #  ['e24_lhmedium_iloose_L1EM18VH',       187, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhloose_L1EM18VH',               188, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhmedium_L1EM18VH',              189, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_L1EM18VH',               190, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_iloose_L1EM18VH',        191, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_iloose_L2StarA_L1EM18VH',192, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_iloose_L2StarB_L1EM18VH',193, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_iloose_L2StarC_L1EM18VH',194, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_L2Star_idperf_L1EM18VH', 195, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_idperf_L1EM18VH',        196, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_iloose_L1EM20VH',        197, 'L1_EM20VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e24_lhtight_iloose',                 198, 'L1_EM20VHI', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e26_lhtight_iloose',                 199, 'L1_EM22VHLIL', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e60_lhmedium',                       200, 'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
        
       #  # multi-electron chains
       #  ['2e12_loose1_L12EM10VH',             204, 'L1_2EM10VH', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['2e17_loose1',                       205, 'L1_2EM15VH', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['2e17_loose1_L12EM15',               206, 'L1_2EM15', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e24_loose1_iloose_e12_loose1_L1EM3',207, 'L1_EM20VHI', ['L1_EM20VHI','L1_2EM3'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e18_loose1_2e9_loose1',             208, 'L1_EM15VH_3EM7', ['L1_EM15VH','L1_3EM7'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
                                                                                   
       #  # LH PID
       #  ['2e17_lhloose',                        201, 'L1_2EM15VH', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e24_lhloose_iloose_e12_lhloose_L1EM3',202, 'L1_EM20VHI', ['L1_EM20VHI','L1_2EM3'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e18_lhloose_2e9_lhloose',             203, 'L1_EM15VH_3EM7', ['L1_EM15VH','L1_3EM7'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
        
       #  # Multielectron chains with m_ee cut for Run1 PID
       #  ['e5_tight1_e4_etcut',                          210,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1_e4_etcut_Jpsiee',                   211,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1_L2StarA_e4_etcut_L2StarA_Jpsiee',   212,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1_L2StarB_e4_etcut_L2StarB_Jpsiee',   213,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1_L2StarC_e4_etcut_L2StarC_Jpsiee',   214,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1_L2Star_idperf_e4_etcut_L2Star_idperf_Jpsiee', 215,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1_idperf_e4_etcut_idperf_Jpsiee',     216,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e9_tight1_e4_etcut_Jpsiee',                   217,      'L1_EM7_2EM3',  ['L1_EM7','L1_2EM3'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e9_etcut_e5_tight1_Jpsiee',                   218,      'L1_EM7_2EM3',  ['L1_EM7','L1_2EM3'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e14_tight1_e4_etcut_Jpsiee',                  219,      'L1_EM12_2EM3', ['L1_EM12','L1_2EM3'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e14_etcut_e5_tight1_Jpsiee',                  220,      'L1_EM12_2EM3', ['L1_EM12','L1_2EM3'], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],

       #  # Multielectron chains with m_ee cut for Run1 PID
       #  ['e5_lhtight_e4_etcut_Jpsiee',                  223,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_lhtight_L2StarA_e4_etcut_L2StarA_Jpsiee',  224,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_lhtight_L2StarB_e4_etcut_L2StarB_Jpsiee',  225,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_lhtight_L2StarC_e4_etcut_L2StarC_Jpsiee',  226,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_lhtight_L2Star_idperf_e4_etcut_L2Star_idperf_Jpsiee', 227,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_lhtight_idperf_e4_etcut_idperf_Jpsiee',    228,      'L1_2EM3', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],

       #  # L1Topo chains
       #  ['e5_tight1_e4_etcut_L11INVM5-EMs2-EMall',           229, 'L1_1INVM5-EMs2-EMall', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e5_tight1_e4_etcut_Jpsiee_L11INVM5-EMs2-EMall',    230, 'L1_1INVM5-EMs2-EMall', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e9_tight1_e4_etcut_Jpsiee_L11INVM5-EM7s2-EMall',   231, 'L1_1INVM5-EM7s2-EMall', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e9_etcut_e5_tight1_Jpsiee_L11INVM5-EM7s2-EMall',   232, 'L1_1INVM5-EM7s2-EMall', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e14_tight1_e4_etcut_Jpsiee_L11INVM5-EM12s2-EMall', 233, 'L1_1INVM5-EM12s2-EMall', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],
       #  ['e14_etcut_e5_tight1_Jpsiee_L11INVM5-EM12s2-EMall', 234, 'L1_1INVM5-EM12s2-EMall', [], [PhysicsStream], ['RATE:MultiElectron', 'BW:Egamma'], 1],

       #  # W T&P triggers
       #  ['e5_etcut_L110MINDPHI-AJj15s2-XE0', 500, 'L1_10MINDPHI-AJj15s2-XE0', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L120MINDPHI-AJjs6-XE0',   501, 'L1_20MINDPHI-AJjs6-XE0', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L120MINDPHI-AJj15s2-XE0', 502, 'L1_20MINDPHI-AJj15s2-XE0', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L110MINDPHI-EM6s1-XE0',   503, 'L1_10MINDPHI-EM6s1-XE0', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L120MINDPHI-EM9s6-XE0',   504, 'L1_20MINDPHI-EM9s6-XE0', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L120MINDPHI-EM6s1-XE0',   505, 'L1_20MINDPHI-EM6s1-XE0', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L105RATIO-XE0-HT0-AJj15all.ETA49',   506, 'L1_05RATIO-XE0-HT0-AJj15all.ETA49', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L108RATIO-XE0-HT0-AJj0all.ETA49',    507, 'L1_08RATIO-XE0-HT0-AJj0all.ETA49', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L140RATIO2-XE0-HT0-AJj15all.ETA49',  508, 'L1_40RATIO2-XE0-HT0-AJj15all.ETA49', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L190RATIO2-XE0-HT0-AJj0all.ETA49',   509, 'L1_90RATIO2-XE0-HT0-AJj0all.ETA49', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L1HT20-AJj0all.ETA49',               510, 'L1_HT20-AJj0all.ETA49', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L1NOT-02MATCH-EM9s1-AJj15all.ETA49', 511, 'L1_NOT-02MATCH-EM9s1-AJj15all.ETA49', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e5_etcut_L1NOT-02MATCH-EM9s1-AJj15all.ETA49_05RATIO-XE0-SUM0-EM9s1-HT0-AJj15all.ETA49', 512, 'L1_NOT-02MATCH-EM9s1-AJj15all.ETA49_05RATIO-XE0-SUM0-EM9s1-HT0-AJj15all.ETA49', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],

       #  # Et cut only photon chains
       #  #['g12_etcut_L1EM7',         230,          'L1_EM7', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['g20_etcut_L1EM12',         235,          'L1_EM12', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g25_etcut_L1EM15',        232,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g35_etcut_L1EM15',        233,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g40_etcut',               234,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g50_etcut',               235,          'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g60_etcut',               236,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g80_etcut',               237,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g100_etcut',              238,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  #['g120_etcut',              239,          'L1_EM50V', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],


       #  # Photon cut-based Run1 PID chains
       #  # Loose chains for low ET physics and background estimation
       #  ['g12_loose1_L1EM7',         240,          'L1_EM7', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g20_loose1_L1EM12',        241,          'L1_EM12', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  #####['g25_loose1_L1EM15',        242,          'L1_EM15', [], ['globalStream'], ['RATE:SinglePhoton', 'BW:Egamma'], 1], #duplicate, need to make sure prescales / rerun set properly
       #  #####['g35_loose1_L1EM15',        243,          'L1_EM15', [], ['globalStream'], ['RATE:SinglePhoton', 'BW:Egamma'], 1], #duplicate, need to make sure prescales / rerun set properly
       #  ['g40_loose1',               244,          'L1_EM15', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g50_loose1',               245,          'L1_EM15', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g60_loose1',               246,          'L1_EM50V', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g80_loose1',               247,          'L1_EM50V', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g100_loose1',              248,          'L1_EM50V', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
        
       #  # Run 2 Baseline chains
       #  ['g120_loose1',              250,          'L1_EM50V', [], [PhysicsStream], ['RATE:SinglePhoton','BW:Egamma'], 1],
       #  ['g140_loose1',              251,          'L1_EM50V', [], [PhysicsStream], ['RATE:SinglePhoton','BW:Egamma'], 1],

       #  # multi-photon chains
       #  ['g35_loose1_g25_loose1',    252, 'L1_2EM15VH', [], [PhysicsStream], ['RATE:MultiPhoton','BW:Egamma'], 1],
       #  ['g35_medium1_g25_medium1',  253, 'L1_2EM15VH', [], [PhysicsStream], ['RATE:MultiPhoton','BW:Egamma'], 1],
       #  ['2g20_tight1',              254, 'L1_2EM15VH', [], [PhysicsStream], ['RATE:MultiPhoton','BW:Egamma'], 1],
       #  ['3g20_loose1',              255, 'L1_2EM15VH', [], [PhysicsStream], ['RATE:MultiPhoton','BW:Egamma'], 1],
       #  ['g35_loose1_g25_loose1_L12EM15',    256, 'L1_2EM15', [], [PhysicsStream], ['RATE:MultiPhoton','BW:Egamma'], 1],

       #  # Monopole triggers
       #  ['g0_hiptrt_L1EM18VH',     1004, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
       #  ['g0_hiptrt_L1EM20VH',     1005, 'L1_EM20VH', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
       #  ['g0_hiptrt_L1EM20VHI',    1006, 'L1_EM20VHI', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
       #  ['g0_hiptrt_L1EM22VHLIL',  1007, 'L1_EM22VHLIL', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
       #  ['g0_hiptrt_L1EM50V',    1008, 'L1_EM50V', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], -1],
        
       #  # Rerun mode trigger to support combined chains
       #  ['g4_etcut',                 260,          'L1_EM3', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g8_etcut',                 261,          'L1_EM3', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  #['g9_etcut',                 263,          'L1_EM7', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  #['g14_etcut',                264,          'L1_EM12', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  #['g9_etcut_L1EM3',           265,          'L1_EM3', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  #['g14_etcut_L1EM7',         266,          'L1_EM7', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g25_loose1_L1EM15',        265,          'L1_EM15', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g25_medium1_L1EM3',        266,          'L1_EM3', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g35_loose1_L1EM15',        267,          'L1_EM15', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g35_medium1',              268,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g12_loose1',               269,          'L1_EM8VH', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g20_loose1',               270,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
       #  ['g20_tight1',               271,          'L1_EM15VH', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],

       #  # Fall-back if problem with new tracking
       #  ['e17_etcut_L1EM15',                        290, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_etcut_L2StarA_L1EM15',                291, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_etcut_L2StarB_L1EM15',                292, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_etcut_L2StarC_L1EM15',                293, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_etcut_L2Star_idperf_L1EM15',          294, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e17_etcut_idperf_L1EM15',                 295, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
        
       #  # perf chains to study L2/EF options ### need development in ElectronDef.py !!!
       #  ['e0_perf_L1EM15',               296, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['e0_L2Star_perf_L1EM15',        297, 'L1_EM15', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'], 1],
       #  ['g0_perf_L1EM15',               298, 'L1_EM15', [], [PhysicsStream], ['RATE:SinglePhoton', 'BW:Egamma'], 1],
        
       #  # extra id perf chains for HLT ID group
       #  ['e24_medium1_L2Star_idperf_L1EM18VH',  285, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
       #  ['e5_loose1_L2Star_idperf',             286, 'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
       #  ['e24_medium1_idperf_L1EM18VH',         287, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
       #  ['e5_loose1_idperf',                    288, 'L1_EM3', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'],1],
       #  ['e24_medium1_iloose_L2StarA_L1EM18VH', 289, 'L1_EM18VH', [], [PhysicsStream], ['RATE:SingleElectron', 'BW:Egamma'],1],

       #  # technical chain for forward electrons
       #  ['e17_loose1_L1EM15VHJ1523ETA49',       299,          'L1_EM15VH_J15.23ETA49', ['L1_EM15VH','L1_J15.23ETA49'], [PhysicsStream], ['RATE:Combined', 'BW:Egamma'], 1],
        # ]


    ###########################################################################################################
    #   Bphysics
    ###########################################################################################################
    TriggerFlags.BphysicsSlice.signatures = []#TriggerFlags.BphysicsSlice.signatures() + [

        #['2mu6_bMuMu_L12MU6', 299, 'L1_2MU6', [], [PhysicsStream], [], -1], 

        ###########  2MU4  ################
        # ['2mu4_bJpsimumu',                                            400, 'L1_2MU4',                         [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumu',                                               401, 'L1_2MU4',                         [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bUpsimumu',                                            402, 'L1_2MU4',                         [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumuxv2',                                            403, 'L1_2MU4',                         [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumux_BcmumuDsloose',                                404, 'L1_2MU4',                         [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # # in Physics menu ['2mu4_bDimu',                                                405, 'L1_2MU4',                         [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # # in Physics menu ['2mu4_bDimu_novtx_noos',                                     406, 'L1_2MU4',                         [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bJpsimumu_L12DR15-2MU4ab',                             407, 'L1_2DR15-2MU4ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumu_L12DR15-2MU4ab',                                408, 'L1_2DR15-2MU4ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumuxv2_L12DR15-2MU4ab',                             409, 'L1_2DR15-2MU4ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumux_BcmumuDsloose_L12DR15-2MU4ab',                 410, 'L1_2DR15-2MU4ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_L12DR15-2MU4ab',                                 411, 'L1_2DR15-2MU4ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_novtx_noos_L12DR15-2MU4ab',                      412, 'L1_2DR15-2MU4ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bJpsimumu_L12INVM999-2MU4ab',                          413, 'L1_2INVM999-2MU4ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumu_L12INVM999-2MU4ab',                             414, 'L1_2INVM999-2MU4ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bUpsimumu_L12INVM999-2MU4ab',                          415, 'L1_2INVM999-2MU4ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumuxv2_L12INVM999-2MU4ab',                          416, 'L1_2INVM999-2MU4ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumux_BcmumuDsloose_L12INVM999-2MU4ab',              417, 'L1_2INVM999-2MU4ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_L12INVM999-2MU4ab',                              418, 'L1_2INVM999-2MU4ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_novtx_noos_L12INVM999-2MU4ab',                   419, 'L1_2INVM999-2MU4ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumu_L14INVM8-2MU4ab',                               420, 'L1_4INVM8-2MU4ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumuxv2_L14INVM8-2MU4ab',                            421, 'L1_4INVM8-2MU4ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumux_BcmumuDsloose_L14INVM8-2MU4ab',                422, 'L1_4INVM8-2MU4ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_L14INVM8-2MU4ab',                                423, 'L1_4INVM8-2MU4ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_novtx_noos_L14INVM8-2MU4ab',                     424, 'L1_4INVM8-2MU4ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
       
        # ['2mu4_bJpsimumu_L12DR15-2MU4ab-2INVM999-2MU4ab',             425, 'L1_2DR15-2MU4ab_2INVM999-2MU4ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumu_L12DR15-2MU4ab-2INVM999-2MU4ab',                426, 'L1_2DR15-2MU4ab_2INVM999-2MU4ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumuxv2_L12DR15-2MU4ab-2INVM999-2MU4ab',             427, 'L1_2DR15-2MU4ab_2INVM999-2MU4ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumux_BcmumuDsloose_L12DR15-2MU4ab-2INVM999-2MU4ab', 428, 'L1_2DR15-2MU4ab_2INVM999-2MU4ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_L12DR15-2MU4ab-2INVM999-2MU4ab',                 429, 'L1_2DR15-2MU4ab_2INVM999-2MU4ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_novtx_noos_L12DR15-2MU4ab-2INVM999-2MU4ab',      430, 'L1_2DR15-2MU4ab_2INVM999-2MU4ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumu_L12DR15-2MU4ab-4INVM8-2MU4ab',                  431, 'L1_2DR15-2MU4ab_4INVM8-2MU4ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumuxv2_L12DR15-2MU4ab-4INVM8-2MU4ab',               432, 'L1_2DR15-2MU4ab_4INVM8-2MU4ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bBmumux_BcmumuDsloose_L12DR15-2MU4ab-4INVM8-2MU4ab',   433, 'L1_2DR15-2MU4ab_4INVM8-2MU4ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_L12DR15-2MU4ab-4INVM8-2MU4ab',                   434, 'L1_2DR15-2MU4ab_4INVM8-2MU4ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu4_bDimu_novtx_noos_L12DR15-2MU4ab-4INVM8-2MU4ab',        435, 'L1_2DR15-2MU4ab_4INVM8-2MU4ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],

        # #L1_2MU4 seeded
        # ['mu4_iloose_mu4_7invm9_noos', 332, 'L1_2MU4', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['mu4_mu4_idperf_bJpsimumu_noid',          333, 'L1_2MU4', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['mu4_iloose_mu4_11invm60_noos', 436, 'L1_2MU4', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],


        ##########


        # ###########  3MU4  ################
        # ['3mu4_bDimu', 515, 'L1_3MU4', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['3mu4_bTau',  516, 'L1_3MU4', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['3mu4_bJpsi', 517, 'L1_3MU4', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['3mu4_bUpsi', 518, 'L1_3MU4', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],


        # ######## L1_MU6 seeded#####
        # ['mu6_bJpsi_Trkloose',         534, 'L1_MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],


        # #######  L1_2MU6 #######
        # #in Physics menu ['2mu6_bDimu', 440,             'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1], 
        # #n Physics menu  ['2mu6_bDimu_novtx_noos', 441, 'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],  
        # # not set up yet? ['mu6_iloose_mu6_18invm60_noos', 332, 'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumu',                 303, 'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumuxv2',              304, 'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumux_BcmumuDsloose',  336, 'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bJpsimumu',             305, 'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bUpsimumu',             306, 'L1_2MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],

        # ['2mu6_bJpsimumu_L12DR15-2MU6ab',                             472, 'L1_2DR15-2MU6ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumu_L12DR15-2MU6ab',                                473, 'L1_2DR15-2MU6ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumuxv2_L12DR15-2MU6ab',                             474, 'L1_2DR15-2MU6ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumux_BcmumuDsloose_L12DR15-2MU6ab',                 475, 'L1_2DR15-2MU6ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_L12DR15-2MU6ab',                                 476, 'L1_2DR15-2MU6ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_novtx_noos_L12DR15-2MU6ab',                      477, 'L1_2DR15-2MU6ab',                 [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bJpsimumu_L12INVM999-2MU6ab',                          478, 'L1_2INVM999-2MU6ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumu_L12INVM999-2MU6ab',                             479, 'L1_2INVM999-2MU6ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bUpsimumu_L12INVM999-2MU6ab',                          480, 'L1_2INVM999-2MU6ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumuxv2_L12INVM999-2MU6ab',                          481, 'L1_2INVM999-2MU6ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumux_BcmumuDsloose_L12INVM999-2MU6ab',              482, 'L1_2INVM999-2MU6ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_L12INVM999-2MU6ab',                              483, 'L1_2INVM999-2MU6ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_novtx_noos_L12INVM999-2MU6ab',                   484, 'L1_2INVM999-2MU6ab',              [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumu_L14INVM8-2MU6ab',                               485, 'L1_4INVM8-2MU6ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumuxv2_L14INVM8-2MU6ab',                            486, 'L1_4INVM8-2MU6ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumux_BcmumuDsloose_L14INVM8-2MU6ab',                487, 'L1_4INVM8-2MU6ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_L14INVM8-2MU6ab',                                488, 'L1_4INVM8-2MU6ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_novtx_noos_L14INVM8-2MU6ab',                     489, 'L1_4INVM8-2MU6ab',                [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        
        # ['2mu6_bJpsimumu_L12DR15-2MU6ab-2INVM999-2MU6ab',             490, 'L1_2DR15-2MU6ab_2INVM999-2MU6ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumu_L12DR15-2MU6ab-2INVM999-2MU6ab',                491, 'L1_2DR15-2MU6ab_2INVM999-2MU6ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumuxv2_L12DR15-2MU6ab-2INVM999-2MU6ab',             492, 'L1_2DR15-2MU6ab_2INVM999-2MU6ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumux_BcmumuDsloose_L12DR15-2MU6ab-2INVM999-2MU6ab', 493, 'L1_2DR15-2MU6ab_2INVM999-2MU6ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_L12DR15-2MU6ab-2INVM999-2MU6ab',                 494, 'L1_2DR15-2MU6ab_2INVM999-2MU6ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_novtx_noos_L12DR15-2MU6ab-2INVM999-2MU6ab',      495, 'L1_2DR15-2MU6ab_2INVM999-2MU6ab', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumu_L12DR15-2MU6ab-4INVM8-2MU6ab',                  496, 'L1_2DR15-2MU6ab_4INVM8-2MU6ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumuxv2_L12DR15-2MU6ab-4INVM8-2MU6ab',               497, 'L1_2DR15-2MU6ab_4INVM8-2MU6ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bBmumux_BcmumuDsloose_L12DR15-2MU6ab-4INVM8-2MU6ab',   498, 'L1_2DR15-2MU6ab_4INVM8-2MU6ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_L12DR15-2MU6ab-4INVM8-2MU6ab',                   499, 'L1_2DR15-2MU6ab_4INVM8-2MU6ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu6_bDimu_novtx_noos_L12DR15-2MU6ab-4INVM8-2MU6ab',        471, 'L1_2DR15-2MU6ab_4INVM8-2MU6ab',   [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],       

        # #########   3MU6 seeded##########
        # ['3mu6_bJpsi',                 300,  'L1_3MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['3mu6_bTau',                  301,  'L1_3MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['3mu6_bDimu',                 302,  'L1_3MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['3mu6_bUpsi',                 522, 'L1_3MU6', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['mu6_iloose_mu6_11invm60_noos', 437, 'L1_2MU6', [], ['Bphysics'], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # #not set up yet?? ['mu6_iloose_mu6_18invm60_noos', 438, 'L1_2MU6', [], ['Bphysics'], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],

        # ###########  2MU10 seeded ###########
        # ['2mu10_bBmumu',                337, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu10_bBmumuxv2',             338, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu10_bBmumux_BcmumuDsloose', 339, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu10_bJpsimumu',            330, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu10_bUpsimumu',            331, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu10_bDimu',                 513, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['2mu10_bDimu_novtx_noos',      514, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],
        # ['mu13_mu13_idperf_Zmumu',     335, 'L1_2MU10', [], [PhysicsStream], ['RATE:Bphysics_MultiMuon','BW:Bphys'], -1],  
        # ]



    TriggerFlags.CombinedSlice.signatures = [#TriggerFlags.CombinedSlice.signatures() + [
        # # all e/g + X triggers are taken from DC14 and L1 thresholds adjusted
        # ['e17_medium1_mu12',        815, 'L1_EM15VH_MU10', ['L1_EM15VH', 'L1_MU10'], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],
        # ['e7_medium1_mu24',         814, 'L1_MU20', ['L1_EM3', 'L1_MU20'], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],
        # ['2e12_medium1_mu12',       813, 'L1_2EM8VH_MU10', ['L1_2EM8VH', 'L1_MU10'], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],
        # ['e12_medium1_2mu8',        812, 'L1_EM8VH_2MU6', ['L1_EM8VH', 'L1_2MU6'], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1,['parallel',-1,[] ]],

        # ['g25_medium1_mu24',        810,      'L1_MU20', ['L1_EM15VH','L1_MU20'], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1, ['parallel',-1,[] ]],
        # ['g12_loose1_2mu10_msonly', 809,      'L1_EM8VH_2MU6', ['L1_EM8VH', 'L1_2MU6'], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1, ['parallel',-1,[] ]],

        # ['2g20_loose1_mu20noL1',                807,      'L1_2EM15VH', ['L1_2EM15VH', ''], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma', 'BW:Muon'], -1, ['serial',-1,['2g20_loose1','mu20noL1'] ]],
        # ['e24_medium1_L1EM20VHI_mu8noL1',       808,  'L1_EM20VHI', ['L1_EM20VHI', ''], [PhysicsStream], ['RATE:ElectronMuon', 'BW:Egamma'], -1, ['serial',-1,['e24_medium1_L1EM20VHI','mu8noL1'] ]],

        # ['e5_tight1_g4_etcut',                  811,      'L1_2EM3', [], [PhysicsStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1, ['parallel',-1,[] ]],
        # ['e24_medium1_L1EM20VHI_g8_etcut',      805, 'L1_EM20VHI', ['L1_EM20VHI','L1_EM3'], [PhysicsStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1, ['parallel',-1,[] ]],
        # ['e17_loose1_2g8_etcut_L12EM7',         804, 'L1_EM15VH_3EM7',['L1_EM15VH','L1_2EM7'], [PhysicsStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],
        # ['e24_medium1_L1EM15VH_g25_medium1',    890, 'L1_2EM15VH',[], [PhysicsStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],
        # ['e20_medium1_g35_loose1',              891, 'L1_2EM15VH',[], [PhysicsStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],
        # ['e20_medium1_2g20_loose1',             892, 'L1_2EM15VH',[], [PhysicsStream], ['RATE:ElectronPhoton', 'BW:Egamma'], -1,['parallel',-1,[] ]],

        # #MET+X -- with e/g only
        # ['e24_medium1_L1EM20VHI_xe100noL1', 902, 'L1_EM20VHI',['L1_EM20VHI',''], [PhysicsStream], ['RATE:METElectron', 'BW:Egamma'], -1,['serial',-1,["e24_medium1_L1EM20VHI","xe100noL1"]]],
        # ['g60_loose1_xe60noL1',             903, 'L1_EM50V',['L1_EM50V',''], [PhysicsStream], ['RATE:METElectron', 'BW:Egamma'], -1,['serial',-1,["g60_loose1","xe60noL1"]]],
        # ['mu24_xe100noL1_wEFMu',       901, 'L1_MU20',['L1_MU20',''], [PhysicsStream], ['RATE:METMuon', 'BW:Muon'], -1,['serial',-1,["mu24","xe100noL1_wEFMu"]]],
        # ['j100_xe80',             904, 'L1_J40_XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j100","xe80"]]],
        # ['j80_xe80',              905, 'L1_J40_XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j80","xe80"]]],
        # #['j80_xe80_dphi1',        924, 'L1_J40_XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j80","xe80"]]],
        # ['j80_xe80_dphi1_L1J40_10MINDPHI-Js2-XE50', 925, 'L1_J40_10MINDPHI-Js2-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j80","xe80_L1J40_10MINDPHI-Js2-XE50"]]],
        # ['j80_xe80_dphi1_L1J40_10MINDPHI-J20s2-XE50', 926, 'L1_J40_10MINDPHI-J20s2-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j80","xe80_L1J40_10MINDPHI-J20s2-XE50"]]],
        # ['j80_xe80_dphi1_L1J40_10MINDPHI-J20ab-XE50', 927, 'L1_J40_10MINDPHI-J20ab-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j80","xe80_L1J40_10MINDPHI-J20ab-XE50"]]],
        # ['j80_xe80_dphi1_L1J40_10MINDPHI-CJ20ab-XE50', 928, 'L1_J40_10MINDPHI-CJ20ab-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j80","xe80_L1J40_10MINDPHI-CJ20ab-XE50"]]],
        # ['j100_xe80_L1J40_10MINDPHI-Js2-XE50', 683, 'L1_J40_10MINDPHI-Js2-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j100","xe80_L1J40_10MINDPHI-Js2-XE50"]]],
        # ['j100_xe80_L1J40_10MINDPHI-J20s2-XE50', 684, 'L1_J40_10MINDPHI-J20s2-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j100","xe80_L1J40_10MINDPHI-J20s2-XE50"]]],
        # ['j100_xe80_L1J40_10MINDPHI-J20ab-XE50', 685, 'L1_J40_10MINDPHI-J20ab-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j100","xe80_L1J40_10MINDPHI-J20ab-XE50"]]],
        # ['j100_xe80_L1J40_10MINDPHI-CJ20ab-XE50', 686, 'L1_J40_10MINDPHI-CJ20ab-XE50',['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1,['serial',-1,["j100","xe80_L1J40_10MINDPHI-CJ20ab-XE50"]]],

        ['j40_xe80_razor200',       925,    'L1_2J15_XE55', ['',''], [PhysicsStream], ['RATE:JetMET', 'BW:Jets'], -1, ['serial',-1,['j40','xe80']]],


        # # TAU+X
        # ['tau35_medium1_calo_tau25_medium1_calo',          906, 'L1_TAU20_2TAU12_J25_2J20_3J12',['L1_TAU20','L1_TAU12'], [PhysicsStream], ['RATE:Tau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_calo","tau25_medium1_calo"]]],
        # ['e18_loose1_tau25_medium1_calo',                  907, 'L1_EM15_2TAU12_J25_2J15_3J12',['L1_EM15','L1_TAU12'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau25_medium1_calo"]]],
        # ['e18_lhloose_tau25_medium1_calo',                 908, 'L1_EM15_2TAU12_J25_2J15_3J12',['L1_EM15','L1_TAU12'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau25_medium1_calo"]]],
        # ['e18_loose1_tau80_medium1_calo',                  909, 'L1_EM15_TAU40_2TAU15',['L1_EM15','L1_TAU40'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau80_medium1_calo"]]],
        # ['e18_lhloose_tau80_medium1_calo',                 910, 'L1_EM15_TAU40_2TAU15',['L1_EM15','L1_TAU40'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau80_medium1_calo"]]],
        # ['mu14_tau35_medium1_calo',                        911, 'L1_MU10_TAU20',['L1_MU10','L1_TAU20'], [PhysicsStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau35_medium1_calo"]]],
        # ['mu14_tau25_medium1_calo',                        912, 'L1_MU10_TAU12_J25_2J12',['L1_MU10','L1_TAU12'], [PhysicsStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau25_medium1_calo"]]],
        # ['tau35_medium1_calo_tau25_medium1_calo_xe50',     913, 'L1_TAU20_2TAU12_XE35',['L1_TAU20','L1_TAU12','L1_XE35'], [PhysicsStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_calo","tau25_medium1_calo","xe50"]]],
        # ['tau35_medium1_calo_xe70_L1XE45',                 914, 'L1_TAU20_2J20_XE45',['L1_TAU20','L1_XE45'], [PhysicsStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_calo","xe70_L1XE45"]]],
        # ['tau35_medium1_ptonly_tau25_medium1_ptonly',      915, 'L1_TAU20_2TAU12_J25_2J20_3J12',['L1_TAU20','L1_TAU12'], [PhysicsStream], ['RATE:Tau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_ptonly","tau25_medium1_ptonly"]]],
        # ['e18_loose1_tau25_medium1_ptonly',                916, 'L1_EM15_2TAU12_J25_2J15_3J12',['L1_EM15','L1_TAU12'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau25_medium1_ptonly"]]],
        # ['e18_lhloose_tau25_medium1_ptonly',               917, 'L1_EM15_2TAU12_J25_2J15_3J12',['L1_EM15','L1_TAU12'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau25_medium1_ptonly"]]],
        # ['e18_loose1_tau80_medium1_ptonly',                918, 'L1_EM15_TAU40_2TAU15',['L1_EM15','L1_TAU40'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_loose1","tau80_medium1_ptonly"]]],
        # ['e18_lhloose_tau80_medium1_ptonly',               919, 'L1_EM15_TAU40_2TAU15',['L1_EM15','L1_TAU40'], [PhysicsStream], ['RATE:ElectronTau', 'BW:Tau'], -1,['serial',-1,["e18_lhloose","tau80_medium1_ptonly"]]],
        # ['mu14_tau35_medium1_ptonly',                      920, 'L1_MU10_TAU20',['L1_MU10','L1_TAU20'], [PhysicsStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau35_medium1_ptonly"]]],
        # ['mu14_tau25_medium1_ptonly',                      921, 'L1_MU10_TAU12_J25_2J12',['L1_MU10','L1_TAU12'], [PhysicsStream], ['RATE:MuonTau', 'BW:Tau'], -1,['serial',-1,["mu14","tau25_medium1_ptonly"]]],
        # ['tau35_medium1_ptonly_tau25_medium1_ptonly_xe50', 922, 'L1_TAU20_2TAU12_XE35',['L1_TAU20','L1_TAU12','L1_XE35'], [PhysicsStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_ptonly","tau25_medium1_ptonly","xe50"]]],
        # ['tau35_medium1_ptonly_xe70_L1XE45',               923, 'L1_TAU20_2J20_XE45',['L1_TAU20','L1_XE45'], [PhysicsStream], ['RATE:METTau', 'BW:Tau'], -1,['serial',-1,["tau35_medium1_ptonly","xe70_L1XE45"]]],

        ]

    TriggerFlags.MinBiasSlice.signatures = []#TriggerFlags.MinBiasSlice.signatures() + [
 #        #['mb_perf_L1LUCID', 823, 'L1_LUCID', [], ['MinBias'], [], 1],
 #        #['mb_sptrk', 806, 'L1_RD0_FILLED', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1],
 #        ['mb_perf_L1MBTS_1', 822, 'L1_MBTS_1', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1],
 #        ['mb_sp2000_trk70_hmt', 824, 'L1_TE20', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1],        

 #        ['mb_sp2000_pusup600_trk70_hmt', 836, 'L1_TE20', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1], 
 #        ['mb_sp2000_pusup600_trk70_hmt_L1TE30', 837, 'L1_TE30', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1], 
 #        ['mb_sp2000_pusup600_trk70_hmt_L1TE40', 838, 'L1_TE40', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1], 
 #        ['mb_sp2000_pusup700_trk70_hmt_L1TE30', 839, 'L1_TE30', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1], 
 #        ['mb_sp2000_pusup700_trk70_hmt_L1TE40', 840, 'L1_TE40', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1], 

	# #ATR-9419
 #        ['mb_sp2000_pusup700_trk60_hmt_L1TE30', 841, 'L1_TE30', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1],
 #        ['mb_sp2500_pusup750_trk90_hmt_L1TE40', 842, 'L1_TE40', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1],
 #        ['mb_sp3000_pusup800_trk120_hmt_L1TE50', 852, 'L1_TE50', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1],

        # ]


    ## The following slices are only needed for Physics runnings and LS1 menus
    ## To be commented out for DC14
    TriggerFlags.CalibSlice.signatures   = []#TriggerFlags.CalibSlice.signatures() + []
    TriggerFlags.CosmicSlice.signatures  = []#TriggerFlags.CosmicSlice.signatures() + []
    TriggerFlags.StreamingSlice.signatures = []#TriggerFlags.StreamingSlice.signatures() + [
        # ['noalg_mb_L1TE20', 843, 'L1_TE20', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1], 
        # ['noalg_mb_L1TE30', 844, 'L1_TE30', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1], 
        # ['noalg_mb_L1TE40', 845, 'L1_TE40', [], ['MinBias'], ["BW:MinBias", "RATE:MinBias"], -1],

        # # Streamers for TOPO b-jet 
        # ['noalg_L10DR04-MU4ab-CJ15ab', 846, 'L1_0DR04-MU4ab-CJ15ab', [], ['Background'], ["RATE:SeededStreamers", "BW:Other"], -1],
        # ['noalg_L10DR04-MU4ab-CJ30ab', 847, 'L1_0DR04-MU4ab-CJ30ab', [], ['Background'], ["RATE:SeededStreamers", "BW:Other"], -1],
        # ['noalg_L10DR04-MU6ab-CJ25ab', 848, 'L1_0DR04-MU6ab-CJ25ab', [], ['Background'], ["RATE:SeededStreamers", "BW:Other"], -1],
        # ['noalg_L10DR04-MU4ab-CJ17ab', 849, 'L1_0DR04-MU4ab-CJ17ab', [], ['Background'], ["RATE:SeededStreamers", "BW:Other"], -1],
        # ['noalg_L10DR04-MU4ab-CJ20ab', 860, 'L1_0DR04-MU4ab-CJ20ab', [], ['Background'], ["RATE:SeededStreamers", "BW:Other"], -1],

        # # Streamers for TOPO HT
        # ['noalg_L1HT0-AJ0all.ETA49',   861, 'L1_HT0-AJ0all.ETA49',   [], ['Background'], ["RATE:SeededStreamers", "BW:Other"], -1],
        
        # ]

    TriggerFlags.MonitorSlice.signatures = []#TriggerFlags.MonitorSlice.signatures() + []
    #TriggerFlags.GenericSlice.signatures = TriggerFlags.GenericSlice.signatures() + []
    
    
    #get list of all signatures
    signatureList=[]
    for prop in dir(TriggerFlags):
        if prop[-5:]=='Slice':
            sliceName=prop
            slice=getattr(TriggerFlags,sliceName)
            if slice.signatures():
                signatureList.extend(slice.signatures())
            else:
                log.debug('SKIPPING '+str(sliceName))
    #print 'FOUND',len(signatureList),signatureList
    disablePatterns=[#re.compile('beamspot'),  #all beamspot chains                     
                     ]
    disableEFPatterns=[]                                          
    toDisable=[]
    toDisableEF=[]
    for signature in signatureList:
        for pattern in disableEFPatterns+disablePatterns:
            if re.search(pattern,signature):
                if pattern in disableEFPatterns:
                    toDisableEF.append(signature)
                else:
                    toDisable.append(signature)
                break
    log.debug('DISABLE The following chains are disabled in the v4 upgrade menu: '+str(toDisable))
    for signature in toDisable:
        Prescales.HLTPrescales_upgrade_mc_prescale[signature]=[   -1,    -1,    0,    0,  -1]
    for signature in toDisableEF:
        Prescales.HLTPrescales_upgrade_mc_prescale[signature]=[    1,    -1,    0,    0,  -1]



    
Prescales = physics_menu.Prescales
StreamConfig = physics_menu.StreamConfig

Prescales.L1Prescales = dict([(ctpid,1) for ctpid in Prescales.L1Prescales])  # setting all L1 prescales to 1




Prescales.L1Prescales_no_prescale  = Prescales.L1Prescales
Prescales.HLTPrescales_no_prescale = Prescales.HLTPrescales

Prescales.L1Prescales_loose_mc_prescale  = Prescales.L1Prescales
Prescales.HLTPrescales_loose_mc_prescale = {
     # Non physics streams
    'alfa_alfacalib'                        : [    -1,    0,   -1],
    'costmonitor'                           : [    -1,    0,   -1],
    'eb_empty_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'id_cosmicid'                           : [    -1,    0,   -1],
    'id_cosmicid_L1MU11'                    : [    -1,    0,   -1],
    'id_cosmicid_L1MU4'                     : [    -1,    0,   -1],
    'id_cosmicid_ds'                        : [    -1,    0,   -1],
    'id_cosmicid_trtxk'                     : [    -1,    0,   -1],
    'id_cosmicid_trtxk_central'             : [    -1,    0,   -1],
    'l1calocalib'                           : [    -1,    0,   -1],
    'l1calocalib_L1BGRP7'                   : [    -1,    0,   -1],
    'larcalib_L1EM3'                        : [    -1,    0,   -1],
    'larcalib_L1EM3_EMPTY'                  : [    -1,    0,   -1],
    'larcalib_L1J12'                        : [    -1,    0,   -1],
    'larcalib_L1J12_EMPTY'                  : [    -1,    0,   -1],
    'larcalib_L1J3032ETA49_EMPTY'           : [    -1,    0,   -1],
    'larcalib_L1MU10'                       : [    -1,    0,   -1],
    'larcalib_L1TAU8_EMPTY'                 : [    -1,    0,   -1],
    'larps_L1EM3_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1EM7_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1J12_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1J30_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1TAU8_EMPTY'                    : [    -1,    0,   -1],
    'mu0_muoncalib'                         : [    -1,    0,   -1],
    'mu4_cosmicEF_L1MU11_EMPTY'             : [    -1,    0,   -1],
    'mu4_cosmicEF_L1MU4_EMPTY'              : [    -1,    0,   -1],
    'mu4_cosmicEF_ds1_L1MU4'                : [    -1,    0,   -1],
    'mu4_cosmicEF_ds2_L1MU4'                : [    -1,    0,   -1],
    'mu4_cosmic_L1MU11_EMPTY'               : [    -1,    0,   -1],
    'mu4_cosmic_L1MU4_EMPTY'                : [    -1,    0,   -1],
    'mu4_msonly_cosmicEF_L1MU11_EMPTY'      : [    -1,    0,   -1],
    'mu4_msonly_cosmicEF_L1MU4_EMPTY'       : [    -1,    0,   -1],
    'mu4_msonly_cosmic_L1MU11_EMPTY'        : [    -1,    0,   -1],
    'noalg_L1All'                           : [    -1,    0,   -1],
    'noalg_L1Calo'                          : [    -1,    0,   -1],
    'noalg_L1Calo_EMPTY'                    : [    -1,    0,   -1],
    'noalg_L1EM3'                           : [    -1,    0,   -1],
    'noalg_L1J12'                           : [    -1,    0,   -1],
    'noalg_L1MinBias'                       : [    -1,    0,   -1],
    'noalg_L1Standby'                       : [    -1,    0,   -1],
    'noalg_L1TAU8'                          : [    -1,    0,   -1],
    'noalg_bkg_L1Bkg'                       : [    -1,    0,   -1],
    'noalg_bkg_L1RD0_EMPTY'                 : [    -1,    0,   -1],
    'noalg_bkg_L1RD0_UNPAIRED_ISO'          : [    -1,    0,   -1],
    'noalg_bkg_L1RD1_FILLED'                : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1EM3_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J12_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J12_FIRSTEMPTY'     : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J3032ETA49_EMPTY'   : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J30_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J30_FIRSTEMPTY'     : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1RD1_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmicmuons_L1MU11_EMPTY'        : [    -1,    0,   -1],
    'noalg_cosmicmuons_L1MU4_EMPTY'         : [    -1,    0,   -1],
    'noalg_dcmmon_L1RD0_EMPTY'              : [    -1,    0,   -1],
    'noalg_eb_L1BGRP7'                      : [    -1,    0,   -1],
    'noalg_eb_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'noalg_idcosmic_L1TRT'                  : [    -1,    0,   -1],
    'noalg_idmon_L1RD0_EMPTY'               : [    -1,    0,   -1],
    'noalg_idmon_L1RD0_FILLED'              : [    -1,    0,   -1],
    'noalg_idmon_L1RD0_UNPAIRED_ISO'        : [    -1,    0,   -1],
    'noalg_jettauetmiss_L1RD0_FIRSTEMPTY'   : [    -1,    0,   -1],
    'pixel_beam'                            : [    -1,    0,   -1],
    'pixel_noise'                           : [    -1,    0,   -1],
    'robrequest'                            : [    -1,    0,   -1],
    'robrequest_L1RD0_EMPTY'                : [    -1,    0,   -1],
    'sct_noise'                             : [    -1,    0,   -1],
    'tilecalib_laser'                       : [    -1,    0,   -1],
    'tilelarcalib_L1EM3_EMPTY'              : [    -1,    0,   -1],
    'tilelarcalib_L1J12_EMPTY'              : [    -1,    0,   -1],
    'tilelarcalib_L1J3032ETA49_EMPTY'       : [    -1,    0,   -1],
    'tilelarcalib_L1TAU8_EMPTY'             : [    -1,    0,   -1],
    'timeburner'                            : [    -1,    0,   -1],
     # Physics streams but non collision BC items
    'e5_etcut_L1EM3_EMPTY'                  : [    -1,    0,   -1],
    'g5_etcut_L1EM3_EMPTY'                  : [    -1,    0,   -1],
    'j0_perf_L1RD0_EMPTY'                   : [    -1,    0,   -1],
    'j0_perf_bperf_L1RD0_EMPTY'             : [    -1,    0,   -1],
    'larps_L1J12_FIRSTEMPTY'                : [    -1,    0,   -1],
    'larps_L1J30_FIRSTEMPTY'                : [    -1,    0,   -1],
    'mb_perf_L1LUCID_EMPTY'                 : [    -1,    0,   -1],
    'mb_sptrk_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'mb_sptrk_costr_L1RD0_EMPTY'            : [    -1,    0,   -1],
    'noalg_mb_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'noalg_mb_L1RD1_EMPTY'                  : [    -1,    0,   -1],
    'mb_perf_L1LUCID_UNPAIRED_ISO'          : [    -1,    0,   -1],
    'mb_sptrk_L1RD0_UNPAIRED_ISO'           : [    -1,    0,   -1],
    'noalg_mb_L1MBTS_2_UNPAIRED_ISO'        : [    -1,    0,   -1],
    'noalg_mb_L1RD0_UNPAIRED_ISO'           : [    -1,    0,   -1],
     # Slow speed chain
    'mb_sptrk_costr'                        : [    -1,    0,   -1],
    }

Prescales.L1Prescales_tight_mc_prescale  = Prescales.L1Prescales
Prescales.HLTPrescales_tight_mc_prescale = {
     # Non physics streams
    'alfa_alfacalib'                        : [    -1,    0,   -1],
    'costmonitor'                           : [    -1,    0,   -1],
    'eb_empty_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'id_cosmicid'                           : [    -1,    0,   -1],
    'id_cosmicid_L1MU11'                    : [    -1,    0,   -1],
    'id_cosmicid_L1MU4'                     : [    -1,    0,   -1],
    'id_cosmicid_ds'                        : [    -1,    0,   -1],
    'id_cosmicid_trtxk'                     : [    -1,    0,   -1],
    'id_cosmicid_trtxk_central'             : [    -1,    0,   -1],
    'l1calocalib'                           : [    -1,    0,   -1],
    'l1calocalib_L1BGRP7'                   : [    -1,    0,   -1],
    'larcalib_L1EM3'                        : [    -1,    0,   -1],
    'larcalib_L1EM3_EMPTY'                  : [    -1,    0,   -1],
    'larcalib_L1J12'                        : [    -1,    0,   -1],
    'larcalib_L1J12_EMPTY'                  : [    -1,    0,   -1],
    'larcalib_L1J3032ETA49_EMPTY'           : [    -1,    0,   -1],
    'larcalib_L1MU10'                       : [    -1,    0,   -1],
    'larcalib_L1TAU8_EMPTY'                 : [    -1,    0,   -1],
    'larps_L1EM3_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1EM7_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1J12_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1J30_EMPTY'                     : [    -1,    0,   -1],
    'larps_L1TAU8_EMPTY'                    : [    -1,    0,   -1],
    'mu0_muoncalib'                         : [    -1,    0,   -1],
    'mu4_cosmicEF_L1MU11_EMPTY'             : [    -1,    0,   -1],
    'mu4_cosmicEF_L1MU4_EMPTY'              : [    -1,    0,   -1],
    'mu4_cosmicEF_ds1_L1MU4'                : [    -1,    0,   -1],
    'mu4_cosmicEF_ds2_L1MU4'                : [    -1,    0,   -1],
    'mu4_cosmic_L1MU11_EMPTY'               : [    -1,    0,   -1],
    'mu4_cosmic_L1MU4_EMPTY'                : [    -1,    0,   -1],
    'mu4_msonly_cosmicEF_L1MU11_EMPTY'      : [    -1,    0,   -1],
    'mu4_msonly_cosmicEF_L1MU4_EMPTY'       : [    -1,    0,   -1],
    'mu4_msonly_cosmic_L1MU11_EMPTY'        : [    -1,    0,   -1],
    'noalg_L1All'                           : [    -1,    0,   -1],
    'noalg_L1Calo'                          : [    -1,    0,   -1],
    'noalg_L1Calo_EMPTY'                    : [    -1,    0,   -1],
    'noalg_L1EM3'                           : [    -1,    0,   -1],
    'noalg_L1J12'                           : [    -1,    0,   -1],
    'noalg_L1MinBias'                       : [    -1,    0,   -1],
    'noalg_L1Standby'                       : [    -1,    0,   -1],
    'noalg_L1TAU8'                          : [    -1,    0,   -1],
    'noalg_bkg_L1Bkg'                       : [    -1,    0,   -1],
    'noalg_bkg_L1RD0_EMPTY'                 : [    -1,    0,   -1],
    'noalg_bkg_L1RD0_UNPAIRED_ISO'          : [    -1,    0,   -1],
    'noalg_bkg_L1RD1_FILLED'                : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1EM3_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J12_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J12_FIRSTEMPTY'     : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J3032ETA49_EMPTY'   : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J30_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1J30_FIRSTEMPTY'     : [    -1,    0,   -1],
    'noalg_cosmiccalo_L1RD1_EMPTY'          : [    -1,    0,   -1],
    'noalg_cosmicmuons_L1MU11_EMPTY'        : [    -1,    0,   -1],
    'noalg_cosmicmuons_L1MU4_EMPTY'         : [    -1,    0,   -1],
    'noalg_dcmmon_L1RD0_EMPTY'              : [    -1,    0,   -1],
    'noalg_eb_L1BGRP7'                      : [    -1,    0,   -1],
    'noalg_eb_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'noalg_idcosmic_L1TRT'                  : [    -1,    0,   -1],
    'noalg_idmon_L1RD0_EMPTY'               : [    -1,    0,   -1],
    'noalg_idmon_L1RD0_FILLED'              : [    -1,    0,   -1],
    'noalg_idmon_L1RD0_UNPAIRED_ISO'        : [    -1,    0,   -1],
    'noalg_jettauetmiss_L1RD0_FIRSTEMPTY'   : [    -1,    0,   -1],
    'pixel_beam'                            : [    -1,    0,   -1],
    'pixel_noise'                           : [    -1,    0,   -1],
    'robrequest'                            : [    -1,    0,   -1],
    'robrequest_L1RD0_EMPTY'                : [    -1,    0,   -1],
    'sct_noise'                             : [    -1,    0,   -1],
    'tilecalib_laser'                       : [    -1,    0,   -1],
    'tilelarcalib_L1EM3_EMPTY'              : [    -1,    0,   -1],
    'tilelarcalib_L1J12_EMPTY'              : [    -1,    0,   -1],
    'tilelarcalib_L1J3032ETA49_EMPTY'       : [    -1,    0,   -1],
    'tilelarcalib_L1TAU8_EMPTY'             : [    -1,    0,   -1],
    'timeburner'                            : [    -1,    0,   -1],
     # Physics streams but non collision BC items
    'e5_etcut_L1EM3_EMPTY'                  : [    -1,    0,   -1],
    'g5_etcut_L1EM3_EMPTY'                  : [    -1,    0,   -1],
    'j0_perf_L1RD0_EMPTY'                   : [    -1,    0,   -1],
    'j0_perf_bperf_L1RD0_EMPTY'             : [    -1,    0,   -1],
    'larps_L1J12_FIRSTEMPTY'                : [    -1,    0,   -1],
    'larps_L1J30_FIRSTEMPTY'                : [    -1,    0,   -1],
    'mb_perf_L1LUCID_EMPTY'                 : [    -1,    0,   -1],
    'mb_sptrk_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'mb_sptrk_costr_L1RD0_EMPTY'            : [    -1,    0,   -1],
    'noalg_mb_L1RD0_EMPTY'                  : [    -1,    0,   -1],
    'noalg_mb_L1RD1_EMPTY'                  : [    -1,    0,   -1],
    'mb_perf_L1LUCID_UNPAIRED_ISO'          : [    -1,    0,   -1],
    'mb_sptrk_L1RD0_UNPAIRED_ISO'           : [    -1,    0,   -1],
    'noalg_mb_L1MBTS_2_UNPAIRED_ISO'        : [    -1,    0,   -1],
    'noalg_mb_L1RD0_UNPAIRED_ISO'           : [    -1,    0,   -1],
     # Slow speed chain
    'mb_sptrk_costr'                        : [    -1,    0,   -1],
    }


Prescales.L1Prescales_upgrade_mc_prescale  = Prescales.L1Prescales
Prescales.HLTPrescales_upgrade_mc_prescale = deepcopy(Prescales.HLTPrescales_tight_mc_prescale)
# Note: "upgrade" prescales are set with regular expressions at the end
#       of the setupMenu() function above 
