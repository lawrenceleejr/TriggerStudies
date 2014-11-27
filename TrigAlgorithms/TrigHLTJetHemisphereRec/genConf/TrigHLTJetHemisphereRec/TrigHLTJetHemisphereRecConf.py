#Wed Nov 26 22:09:34 2014"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class TrigHLTJetHemisphereRec( ConfigurableAlgorithm ) :
  __slots__ = { 
    'OutputLevel' : 0, # int
    'Enable' : True, # bool
    'ErrorMax' : 1, # int
    'ErrorCount' : 0, # int
    'AuditAlgorithms' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditReinitialize' : False, # bool
    'AuditRestart' : False, # bool
    'AuditExecute' : False, # bool
    'AuditFinalize' : False, # bool
    'AuditBeginRun' : False, # bool
    'AuditEndRun' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'MonitorService' : 'MonitorSvc', # str
    'RegisterForContextService' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'doTiming' : False, # bool
    'doOperationalInfo' : False, # bool
    'AthenaMonTools' : PrivateToolHandleArray([]), # GaudiHandleArray
    'ErrorCodeMap' : {  }, # list
    'doCaching' : True, # bool
    'jetPtCut' : 20000.0, # float
    'jetEtaCut' : 3.20000, # float
    'nJetPassThrough' : 10.0000, # float
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigHLTJetHemisphereRec, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigHLTJetHemisphereRec'
  def getType( self ):
      return 'TrigHLTJetHemisphereRec'
  pass # class TrigHLTJetHemisphereRec
