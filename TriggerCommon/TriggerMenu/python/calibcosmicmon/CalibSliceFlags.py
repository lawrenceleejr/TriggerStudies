""" Calib slice specific flags  """

from AthenaCommon.JobProperties import JobProperty, JobPropertyContainer, jobproperties
from TriggerMenu.menu.CommonSliceHelper import CommonSliceHelper

__author__  = ''
__version__="$Revision: 1.4 $"
__doc__="Calib slice specific flags  "

_flags = [] 
class doTrackingApproach(JobProperty):
    """ Use tracking approach in Calib Trigger """
    statusOn=True
    allowedTypes=['bool']
    StoredValue=False
    
_flags.append(doTrackingApproach)

class signatures(JobProperty):
    """ signatures in Calib slice """
    statusOn=True
    allowedTypes = ['list', 'str']
    StoredValue  = []
_flags.append(signatures)


# create container
from TriggerMenu.menu.CommonSliceHelper import CommonSliceHelper

class CalibSlice(JobPropertyContainer, CommonSliceHelper):
    """ Calib Slice Flags """

from TriggerJobOpts.TriggerFlags import TriggerFlags
TriggerFlags.add_Container(CalibSlice)

# add add common slice flags
TriggerFlags.CalibSlice.import_JobProperties('TriggerMenu.menu.CommonSliceFlags')

for flag in _flags:
    TriggerFlags.CalibSlice.add_JobProperty(flag)
del _flags

# make an alias
CalibSliceFlags = TriggerFlags.CalibSlice
