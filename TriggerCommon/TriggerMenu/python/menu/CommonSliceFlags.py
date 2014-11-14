""" Common slices flags  """

from AthenaCommon.JobProperties import JobProperty, jobproperties


__author__  = 'T. Bold'
__version__=""
__doc__="Common slice flags  "

    
class doL2ID(JobProperty):
    """ On/Off L2 InnerDetector trigger """
    statusOn=True
    allowedType=['bool']
    StoredValue=True
    
class doL2Calo(JobProperty):
    """ On/Off L2 Calorimetry trigger """
    statusOn=True
    allowedType=['bool']
    StoredValue=True
    
class doL2Muon(JobProperty):
    """ On/Off L2 Muons trigger """
    statusOn=True
    allowedType=['bool']
    StoredValue=True

class doEFID(JobProperty):
    """ On/Off EventFilter Inner Detector trigger """
    statusOn=True
    allowedType=['bool']
    StoredValue=True
    
class doEFCalo(JobProperty):
    """ On/Off EventFilter Calorimetry trigger """
    statusOn=True
    allowedType=['bool']
    StoredValue=True
    
class doEFMuon(JobProperty):
    """ On/Off L2 Muons trigger """
    statusOn=True
    allowedType=['bool']
    StoredValue=True

