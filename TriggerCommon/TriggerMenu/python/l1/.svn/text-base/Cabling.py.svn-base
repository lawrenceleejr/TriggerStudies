from Limits import Limits
from AthenaCommon.Logging import logging
log = logging.getLogger("Cabling")
log.setLevel(logging.INFO)

"""
Thilo's proposal in the CTP meeting Oct 13

* Cable to slot assignments:

CTPIN-slot7   : EM1, EM2, TAU1, TAU2
CTPIN-slot8   : JET1, JET2, EN1, EN2
CTPIN-slot9   : MUCTPI, CTPCAL, NIM1, NIM2
CTPCORE-slot10: L1Topo0, L1Topo1, ALFA

* Cable contents:

EM1: 8x3b
EM2: 8x3b
TAU1: 8x3b
TAU2: 8x3b
JET1: 10x3b (jet multiplicities)
JET2: 15x2b (jet multiplicities)
EN1: 24x1b (SumET, MissET, MissETSign) 
EN2: 16x1b (weighted SumET, restricted range MissET)
MUCTPI: first bit unused, 6x3b
CTPCAL: 6x1b BCM [0], 8x1b DBM [6], 2x1b BPTX [14], 6x1b LUCID [16], 3x1b ZDC [22], 3x1b (calreq, last 3 bits) [28,29,30]
NIM1: 12x1b MBTS-A, 4 unused MBTS, 1x3b MBTS-A mult, 1b L1A, 1b LHCf
NIM2: 12x1b MBTS-C, 4 unused MBTS, 1x3b MBTS-C mult, 1b TGC-burst, 1b RPC-burst, 1b TRT-FastOR

* Notes:
- JET1: 8x3b will occupy all CTPIN LUTs, leaving only 2b per LUT.
        This means that 2x3b cannot be counted properly.

- Define where delayed minimum bias trigger is done, e.g. 1 bit in JET1
"""


class Cabling:
    @staticmethod
    def getInputCable(thrtype, mapping, zbSeedType=None):
        #if thrtype=='EM' and mapping>=8: # for run 1
        #    return Cabling.getInputCable('TAU', 15-mapping)

        if thrtype=='ZB': # special case for ZB triggers that are sitting on the last bit of the same connector
            inputCable             = Cabling.getInputCable(zbSeedType, mapping)
            inputCable.bitnum      = 1
            inputCable.range_begin = 30
            inputCable.range_end   = 30
            return inputCable
        
        return InputCable( thrtype, mapping )

    @staticmethod
    def getCableName(thrtype,mapping):
        type2cablename  = { 'MUON'   : [(0,6,'MUCTPI')],
                            'EM'     : [(0,8,'EM1'), (8,16,'EM2')],
                            'TAU'    : [(0,8,'TAU1'), (8,16,'TAU2')],
                            'JET'    : [(0,10,'JET1'), (10,25,'JET2')],
                            'TE'     : [(0,8,'EN1')],
                            'XE'     : [(0,8,'EN1')],
                            'XS'     : [(0,8,'EN1')],
                            'MBTSSI' : [(0,16,'NIM1'),(16,32,'NIM2')],
                            'MBTS'   : [(0,1,'NIM1'), (1,2,'NIM2')],
                            'LUCID'  : [(0,6,'CTPCAL')],
                            'ZDC'    : [(0,3,'CTPCAL')],
                            'CALREQ' : [(0,3,'CTPCAL')],
                            'TOPO'   : [(0,64,'TOPO1'), (64,128,'TOPO2')],
                            'ALFA'   : [(0,64,'ALFA')],
                            'JF'     : [(0,4,'JET1')],
                            'JB'     : [(0,4,'JET1')],
                            'BCM'    : [(0,3,'NIM1')],
                            'BCMCMB' : [(0,3,'NIM1')],
                            'NIM'    : [(0,2,'NIM'), (5,9,'NIM'), (14,37,'NIM')],
                            'JE'     : [(0,4,'JET2')],
                            }

        x = type2cablename[thrtype]
        for (minthr, maxthr, name) in x:
            if mapping>=minthr and mapping<maxthr:
                return name
        raise RuntimeError("Threshold type %s has no cable for mapping '%i'" % (thrtype,mapping))


    @staticmethod
    def calcBitnum(thrtype):
        # get the widths for the threshold types is defined in L1Common
        if thrtype=='TOPO':
            nbits = 1
        else:
            exec("nbits = Limits.%s_bitnum" % thrtype)
        return nbits


    @classmethod
    def getCableAssignment(cls, thrtype):
        """
        Gets the cable assignment from L1Common
        """
        if thrtype=='TOPO' or thrtype=='ALFA':
            directInput = True
            cableAssign = [ (0, 0, 0, 31, 1), (0, 1, 0, 31, 1), (0, 2, 0, 31, 1) ] # mapping 0-63, 64-127, 128-191
        else:
            directInput = False
            exec("cable = Limits.%s_cable" % thrtype)

            # we change the format for run 2, the tuple now contains also the bit multiplicity, as it is not constant per type
            infosize = (len(cable)-1)/cable[0]

            if infosize==5:
                cableAssign = [tuple(cable[x:x+5]) for x in range(1,len(cable),5)]
            else:
                #print "Cabling for threshold type %s is not yet defined for Run 2" % thrtype
                bitnum = Cabling.calcBitnum(thrtype)
                cableAssign = [tuple(cable[x:x+4] + [bitnum]) for x in range(1,len(cable),4)]

        return directInput, cableAssign



class InputCable:
    def __init__(self, thrtype, mapping):
        self.thrtype = thrtype
        self.mapping = mapping

        self.isDirectIn  = False # True for TOPO and ALFA which go into CTPCore
        self.slot        = 0     # input cable slot, possible values 7..9
        self.connector   = 0     # input cable connector, possible values 0..3
        self.clock       = 0     # for direct inputs this can be 0 or 1 since they are overclocked x2
        self.bitnum      = 0     # number of bits for multiplicity transmittion, possible values 1..3 
        self.range_begin = 0     # first bit of range, possible values 0..30
        self.range_end   = 0     # last bit of range, possible values 0..30 (should be first bit + bitnum - 1)

        self.calcSlotAndConnector(self.thrtype, self.mapping)

        self.name    = Cabling.getCableName(thrtype,self.mapping)

        #if thrtype=='EM' and mapping>=8: self.name = 'CP2'  # need to understand this
        #if thrtype=='TOPO' and mapping>=64: self.name = 'TOPO2'

        if self.isDirectIn:
            log.debug( 'Threshold type %s (mapping=%i) comes in on CTPCore on cable %s, bit %s, clock %i' % ( self.thrtype, self.mapping, self.connector,
                                                                                                              ("%i" % self.range_begin) if self.bitnum==1
                                                                                                              else ("%i-%i" % (self.range_begin, self.range_end)), self.clock ) )
        else:
            log.debug( 'Threshold type %s (mapping=%i) comes in on CTPIN on cable %s/%s and bits %s' % ( self.thrtype, self.mapping, self.slot, self.connector,
                                                                                                         ("%i" % self.range_begin) if self.bitnum==1
                                                                                                         else ("%i-%i" % (self.range_begin, self.range_end)) ) )


    def __str__(self):
        return "%s (%s/%s) with %i bits [%i-%i]" % (self.name, self.slot, self.connector, self.bitnum, self.range_begin, self.range_end)

    def calcSlotAndConnector(self, thrtype, mapping):

        #self.bitnum = Cabling.calcBitnum(thrtype)
        #if self.bitnum == 0:
        #    return;

        isDirectInput, cableAssign = Cabling.getCableAssignment(thrtype)

        # CTPIN
        if not isDirectInput:
            self.isDirectIn = False
            offset = mapping
            for (slot, connector, start, stop, bitnum) in cableAssign:
                
                self.bitnum = bitnum
                
                delta = (stop - start + 1) / self.bitnum
                log.debug( 'Cable SLOT%i / CON%i has room for %i thresholds of type %s' % (slot, connector, delta, thrtype) )

                if offset >= delta: # does not fit on this connector (only 0 to offset-1 will fit)
                    offset -= delta # move to the next cable for checking
                    continue

                self.slot        = "SLOT%i" % slot
                self.connector   = "CON%i" % connector
                self.range_begin = start + offset * self.bitnum
                self.range_end   = self.range_begin + self.bitnum-1
                break

        else:
            self.isDirectIn = True
            offset = mapping
            for (connector, clock, start, stop, bitnum) in cableAssign:

                self.bitnum = bitnum
                
                delta = clock * (stop - start + 1) / self.bitnum
                log.debug( 'Cable CON%i has room for %i thresholds of type %s' % (connector, delta, thrtype) )

                if offset >= delta: # does not fit on this connector (only 0 to offset-1 will fit)
                    offset -= delta # move to the next cable for checking
                    continue

                w = int( (stop - start + 1) / self.bitnum )

                self.connector   = "CON%i" % connector
                self.clock       = int(offset / w)
                self.range_begin = start + (offset % w) * self.bitnum
                self.range_end   = self.range_begin + self.bitnum-1
                break
            

