##########################################################################################
##########################################################################################
__doc__=""
__version__="Implementation of Streaming Chain Def Generations"

from AthenaCommon.Logging import logging
logging.getLogger().info("Importing %s",__name__)
mlog = logging.getLogger("TriggerMenu.calibcosmic.generateMonitoringChainDefs")

from TriggerMenu.calibcosmicmon.MonitorDef import *
from TriggerMenu.menu.MenuUtils import *

##########################################################################################
##########################################################################################

def generateChainDefs(chainDict):
    chainParts = chainDict['chainParts']
    
    listOfChainDicts = splitChainDict(chainDict)
    listOfChainDefs = []

    for subChainDict in listOfChainDicts:      
        
        Monitoring = L2EFChain_Monitoring(subChainDict)
        listOfChainDefs += [Monitoring.generateHLTChainDef()]
    
    if len(listOfChainDefs)>1:
        theChainDef = mergeChainDefs(listOfChainDefs)
    else:
        theChainDef = listOfChainDefs[0]

    return theChainDef

