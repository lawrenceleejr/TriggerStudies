from AthenaCommon.Logging import logging
log = logging.getLogger( 'TriggerMenu.menu.StreamInfo' )



def getStreamTag(streams):

    monStreams = ['monitoring_random']

    physicsStreams = ['Main',
                      'Physics',
                      'DISCARD',
                      'Egamma', 
                      'Bphysics',
                      'Combined',
                      'Muon', 
                      'Met', 'Jet', 'Tau', 
                      'MinBias',
                      'Standby', 
                      'L1Muon', 'L1Calo', 'L1MinBias', 
                      'IDCosmic','CosmicCalo',
                      'HLTPassthrough',
                      'JetTauEtmiss', # needed for LS1menu
                      'EnhancedBias',
                      'IDMonitoring',
                      'CosmicMuons',
                      'HLT_IDCosmic',
                      'CosmicID',
                      ]

    calibStreams = ['Background', 
                    'Tile', 
                    'L1CaloCalib', 
                    'LArCellsEmpty',
                    'PixelNoise', 'PixelBeam', 
                    'SCTNoise',
                    'calibration_CSC',
                    'CostMonitoring',
                    'beamspot',
                    'Muon_Calibration',
                    'ALFACalib'
                    ]
    dataScoutingStreams = ['DataScouting_01_CosmicMuons',
                           'DataScouting_02_CosmicMuons',
                           'DataScouting_02_IDCosmic',                    
                           ]

    expressStreams = ['express']

    # stream is a tuple (stream, type, obeyLB, prescale)
    streamTags = []

    for stream in streams:
        
        if stream in physicsStreams:
            streamTags += [(stream, 'physics', 'yes', '1')]
        elif stream in calibStreams:
            streamTags += [(stream, 'calibration', 'no', '1')]
        elif stream in expressStreams:
            streamTags += [(stream, 'express', 'yes', '1')]
        elif stream in monStreams:
            streamTags += [(stream, 'monitoring', 'yes', '1')]
        elif stream in dataScoutingStreams:
            streamTags += [(stream, 'calibration', 'yes', '1')]
            
        else:
            log.error('Stream %s not defined, returning dummy stream!' % stream)
            return [ ('jettauetmiss','physics','yes','1') ]#[('','','','')]
            

    log.info('StreamTags '+str(streamTags))
    return streamTags

#[ ('jettauetmiss','physics','yes','1') ]
