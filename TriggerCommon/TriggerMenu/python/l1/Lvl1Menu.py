from Lvl1Thresholds import LVL1Thresholds, LVL1Threshold, ThresholdValue
from Lvl1MenuItems import LVL1MenuItems, LVL1MenuItem
from Lvl1MonCounters import Lvl1MonCounters, Lvl1CtpinCounter
from CaloInfo import CaloInfo
from MuctpiInfo import MuctpiInfo
from CTPInfo import CTPInfo
from Limits import Limits

from AthenaCommon.Logging import logging
log = logging.getLogger("TriggerMenu.l1.Lvl1Menu")

class Lvl1Menu:

    def __init__(self, menuName):
        self.menuName = menuName

        # items in menu
        self.items = LVL1MenuItems()
        
        # thresholds in menu
        self.thresholds = LVL1Thresholds()

        # thresholds in menu
        self.counters = Lvl1MonCounters()

        # CTP Info in the menu
        self.CTPInfo = CTPInfo()
        
        # Muon Info in the menu
        self.MuctpiInfo = MuctpiInfo(low_pt=1, high_pt=1, max_cand=13)

        # Calo Info in the menu
        self.CaloInfo = CaloInfo(name='standard', globalEmScale=2, globalJetScale=1)

        if self.menuName:
            from Lvl1MenuUtil import get_smk_psk_Name
            smk_psk_Name = get_smk_psk_Name(self.menuName)
            self.items.menuName = smk_psk_Name["smkName"]
            self.items.pssName  = smk_psk_Name["pskName"]


    @staticmethod
    def partitioning():
        from Lvl1Flags import Lvl1Flags
        first = Lvl1Flags.MenuPartitioning()
        last = first[1:] + [ Limits.MaxTrigItems ]
        partitioning = dict( zip([1,2,3],zip(first,last)) )
        return partitioning

    def addThreshold(self, threshold):
        self.thresholds += threshold


    def addItem(self, item):
        self.items += item


    def getItem(self,name):
        return self.items.findItemByName(name)


    def addCounters(self):
        for thr in self.thresholds:
            # this special check address the LUT size issue for the monitoring (see Cabling.py)
            dontGenerateCounter = (thr.ttype=="JET" and (thr.mapping==8 or thr.mapping==9)) \
                                  or thr.ttype=="TOPO"
            if dontGenerateCounter: continue
            for mult in range(1, 2**thr.cableinfo.bitnum):
                self.counters.addCounter(Lvl1CtpinCounter(thr.name,mult))




    def xml(self, ind=1, step=2):
        s  = '<?xml version="1.0"?>\n'
        s += '<LVL1Config name="%s" ctpVersion="%i" l1Version="%i">\n' % (self.menuName, Limits.CTPVersion, Limits.L1CommonVersion)
        s += '  <!--File is generated by TriggerMenu-->\n'
        s += '  <!--No. L1 thresholds defined: %i-->\n' % len(self.thresholds)
        s += '  <!--No. L1 items defined: %i-->\n' % len(self.items)
        s += self.items.xml()
        s += self.thresholds.xml()
        s += self.counters.xml()
        s += self.CTPInfo.xml()
        s += self.CaloInfo.xml()
        s += self.MuctpiInfo.xml()
        s += '</LVL1Config>\n'
        return s


    def readMenuFromXML(self,inputFile):
        from XMLMenuReader import readMenuFromXML
        readMenuFromXML(self, inputFile)


    def checkL1(self):
        """
        All other checks should be implemented in TrigConfStorage/src/CheckConsistency.cxx
        This method is only for quick solutions but should be intermediate
        """
        from Lvl1Flags import Lvl1Flags

        success = True
        
        # Checks if all needed thresholds are in the menu
        for item in self.items:
            allThrNames = self.thresholds.thresholdNames()
            itemThrNames = item.thresholdNames(include_bgrp=False)
            for thrName in itemThrNames:
                if thrName not in allThrNames:
                    log.error('Menu item %s contains threshold %s which is not part of the menu!' % (item.name,thrName))
                    success = False

        # Check that the threshold multiplicities don't exceed the number of encodable values give the available bits
        for item in self.items:
            conditions = item.conditions()
            for c in conditions:
                log.debug("Item %s has threshold %s on cable %s with multiplicity %i" % (item, c.threshold, c.threshold.cableinfo, c.multiplicity) )
                maxAllowMult = {1 : 1, 2 : 3, 3 : 7} [c.threshold.cableinfo.bitnum]
                if c.multiplicity > maxAllowMult:
                    log.error("Item %s has condition %s. Threshold %s is on cable %s which allows maximum multiplicity %i" %
                              (item.name, c, c.threshold.name, c.threshold.cableinfo.name, maxAllowMult) )
                    success = False
                    

        # Check all items are in the correct partition
        for item in self.items:
            partitionRange = Lvl1Menu.partitioning()[item.partition]
            if not (item.ctpid>=partitionRange[0] and item.ctpid<partitionRange[1]):
                log.error('Item %s (ctpid %i, partition %i) outside allowed range for partition %r!' % (item.name, item.ctpid, item.partition, partitionRange))
                success = False


        # Check all items if bunchgroups are in the same partition
        bgpart = dict( [("BGRP%i" % bg.internalNumber, bg.menuPartition) for bg in self.CTPInfo.bunchGroupSet.bunchGroups] )
        for item in self.items:
            bgs = [t for t in item.thresholdNames(include_bgrp=True) if t.startswith('BGRP')]
            if not 'BGRP0' in bgs:
                log.error('Item %s (partition %i) is not using BGRP0 which is mandatory!' % (item.name,item.partition))
            else:
                bgs.remove('BGRP0')
            for bg in bgs:
                if bgpart[bg] != item.partition:
                    log.error('Item %s (partition %i) uses BG %s which is in partition %i!' % (item.name,item.partition,bg,bgpart[bg]))
                    success = False


        # check that L1 CalReq are the last 3 items of the menu (509,510,511) - check with Thilo/Ralf


        if not success:
            raise RuntimeError("There is a problem in the menu that needs fixing")

        return success

