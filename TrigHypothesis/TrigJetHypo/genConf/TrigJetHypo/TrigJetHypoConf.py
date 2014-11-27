#Thu Nov 27 12:34:45 2014"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class TrigEFDEtaFex( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'DEtaCut' : 2.0000000, # float
    'MjjCut' : -100000.00, # float
    'DEtaLabel' : 'DeltaEta', # str
    'EtCut' : -100000.00, # float
    'EtaMaxCut' : 100.00000, # float
    'CheckMostForwardBackwardPair' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'MjjCut' : """ Minimal Invariant Mass of two Jets """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'DEtaLabel' : """ Label for the jets delta eta feature in the HLT """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'CheckMostForwardBackwardPair' : """ Check DeltaEta for most forward/backward pair of jets """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFDEtaFex, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFDEtaFex'
  pass # class TrigEFDEtaFex

class TrigEFDEtaHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'NGaps' : 0, # int
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'NGaps' : """ Number of gaps above threshold """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFDEtaHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFDEtaHypo'
  pass # class TrigEFDEtaHypo

class TrigEFDPhiMetJetAllTE( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'MinDPhiCut' : 0.30000000, # float
    'MaxDPhiJets' : 3.0000000, # float
    'MinJetEt' : 20000.000, # float
    'MinJetEta' : 0.0000000, # float
    'MaxJetEta' : 3.2000000, # float
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFDPhiMetJetAllTE, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFDPhiMetJetAllTE'
  pass # class TrigEFDPhiMetJetAllTE

class TrigEFHTHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'Etcut' : 30000.000, # float
    'HTcut' : 350000.00, # float
    'etaMincut' : 0.0000000, # float
    'etaMaxcut' : 3.2000000, # float
    'doMonitoring' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFHTHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFHTHypo'
  pass # class TrigEFHTHypo

class TrigEFJetDphiHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'DphiCut' : 0.40000000, # float
    'minDphiCut' : 0.30000000, # float
    'Etcut1' : 30000.000, # float
    'Etcut2' : 30000.000, # float
    'etaMincut' : 0.0000000, # float
    'etaMaxcut' : 3.2000000, # float
    'doMonitoring' : False, # bool
    'AcceptAll' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFJetDphiHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFJetDphiHypo'
  pass # class TrigEFJetDphiHypo

class TrigEFJetHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'Etcut' : 40000.000, # float
    'etaMincut' : 0.0000000, # float
    'etaMaxcut' : 10.000000, # float
    'Multiplicitycut' : 1, # int
    'doMonitoring' : False, # bool
    'AcceptAll' : False, # bool
    'EtThresholds' : [  ], # list
    'doBasicCleaning' : False, # bool
    'triggerOnBad' : False, # bool
    'n90CleaningThreshold' : 2.00000, # float
    'presamplerCleaningThreshold' : 0.900000, # float
    'negativeECleaningThreshold' : -60000.0, # float
    'qmeanCleaningThreshold' : 0.800000, # float
    'HECQCleaningThreshold' : 0.500000, # float
    'HECfCleaningThreshold' : 0.500000, # float
    'LArQCleaningThreshold' : 0.800000, # float
    'EMfCleaningThreshold' : 0.950000, # float
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFJetHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFJetHypo'
  pass # class TrigEFJetHypo

class TrigEFJetHypoNoise( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'Etcut' : 40000.000, # float
    'doMonitoring' : False, # bool
    'AcceptAll' : False, # bool
    'BadFEBCut' : 5, # int
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFJetHypoNoise, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFJetHypoNoise'
  pass # class TrigEFJetHypoNoise

class TrigEFJetMassDEta( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'MjjCut' : 200000.00, # float
    'DEtaCut' : 2.0000000, # float
    'doMonitoring' : False, # bool
    'AcceptAll' : False, # bool
    'EtCut' : 0.0000000, # float
    'EtaMaxCut' : 100.00000, # float
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFJetMassDEta, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFJetMassDEta'
  pass # class TrigEFJetMassDEta

class TrigEFJetMassY( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'Masscut' : 2000000.0, # float
    'Ystarcut' : 1.7000000, # float
    'doMonitoring' : False, # bool
    'AcceptAll' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFJetMassY, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFJetMassY'
  pass # class TrigEFJetMassY

class TrigEFJetMctHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'MctCut' : 150000.00, # float
    'Etcut1' : 30000.000, # float
    'Etcut2' : 30000.000, # float
    'etaMincut' : 0.0000000, # float
    'etaMaxcut' : 3.2000000, # float
    'Multiplicitycut' : 1, # int
    'doMonitoring' : False, # bool
    'AcceptAll' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFJetMctHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFJetMctHypo'
  pass # class TrigEFJetMctHypo

class TrigEFRazorAllTE( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'Razorcut' : 300000.00, # float
    'doMonitoring' : True, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigEFRazorAllTE, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigEFRazorAllTE'
  pass # class TrigEFRazorAllTE

class TrigL2CentralJetAllTE( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'eta_range' : 1.1000000, # float
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2CentralJetAllTE, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2CentralJetAllTE'
  pass # class TrigL2CentralJetAllTE

class TrigL2DEtaFex( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'DEtaCut' : 2.0000000, # float
    'MjjCut' : -100000.00, # float
    'DEtaLabel' : 'DeltaEta', # str
    'EtCut' : -100000.00, # float
    'EtaMaxCut' : 100.00000, # float
    'CheckMostForwardBackwardPair' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'MjjCut' : """ Minimal Invariant Mass of two Jets """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'DEtaLabel' : """ Label for the jets delta eta feature in the HLT """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'CheckMostForwardBackwardPair' : """ Check DeltaEta for most forward/backward pair of jets """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2DEtaFex, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2DEtaFex'
  pass # class TrigL2DEtaFex

class TrigL2DEtaHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'NGaps' : 0, # int
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'NGaps' : """ Number of gaps above threshold """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2DEtaHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2DEtaHypo'
  pass # class TrigL2DEtaHypo

class TrigL2DEtaMjjAllTE( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'jetInputKey' : 'TrigT2CaloJet', # str
    'EtCut' : 15000.000, # float
    'etaMinCut' : -1.0000000, # float
    'etaMaxCut' : 100.00000, # float
    'dEtaCut' : 2.0000000, # float
    'MjjCut' : 0.0000000, # float
    'doMonitoring_L2' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'EtCut' : """ cut value for L1.5 jet et """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2DEtaMjjAllTE, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2DEtaMjjAllTE'
  pass # class TrigL2DEtaMjjAllTE

class TrigL2DijetAllTE( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'doMonitoring_L2' : True, # bool
    'checkJetVectors' : True, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'checkJetVectors' : """ check algorithm working as expected """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2DijetAllTE, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2DijetAllTE'
  pass # class TrigL2DijetAllTE

class TrigL2DijetCombo( ConfigurableAlgorithm ) :
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
    'CombinationsLimit' : 0, # int
    'SuccessfulCombinationsLimit' : 0, # int
    'doMonitoring_L2' : True, # bool
  }
  _propertyDocDct = { 
    'CombinationsLimit' : """ The number which limits maximum number pf created combinatorial TEs. 0==no limit """,
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'SuccessfulCombinationsLimit' : """ The number which limits maximum number of good (passed by acceptImputs method) combinations. 0==no limit """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2DijetCombo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2DijetCombo'
  pass # class TrigL2DijetCombo

class TrigL2HTAllTE( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'jetInputKey' : 'TrigT2CaloJet', # str
    'HTcut' : 350000.00, # float
    'Etcut' : 30000.000, # float
    'etaMincut' : 0.0000000, # float
    'etaMaxcut' : 3.2000000, # float
    'doMonitoring_L2' : True, # bool
    'AcceptAll' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2HTAllTE, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2HTAllTE'
  pass # class TrigL2HTAllTE

class TrigL2HTFullScanHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'jetInputKey' : 'TrigT2CaloJet', # str
    'HTcut' : 350000.00, # float
    'Etcut' : 30000.000, # float
    'etaMincut' : 0.0000000, # float
    'etaMaxcut' : 3.2000000, # float
    'doMonitoring_L2' : True, # bool
    'AcceptAll' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2HTFullScanHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2HTFullScanHypo'
  pass # class TrigL2HTFullScanHypo

class TrigL2JetDphiHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'JetDphiMaxCut' : 2.74159, # float
    'JetDphiMinCut' : 0.400000, # float
    'ptHardJetCut' : 150000., # float
    'ptSoftJetCut' : 35000.0, # float
    'doMonitoring_L2' : True, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'ptHardJetCut' : """ Pt threshold for the hardest L2 jet """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'JetDphiMaxCut' : """ Max Delta Phi cut between L2 jets  """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'JetDphiMinCut' : """ Min Delta Phi cut between L2 jets  """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
    'ptSoftJetCut' : """ Pt threshold for the 2nd hardest L2 jet """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2JetDphiHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2JetDphiHypo'
  pass # class TrigL2JetDphiHypo

class TrigL2JetHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'Etcut_L2' : 20000.000, # float
    'doMonitoring_L2' : False, # bool
    'AcceptAll' : False, # bool
    'doHECfnLeadingCellsCleaning' : False, # bool
    'doEMfJetQualityCleaning' : False, # bool
    'doHECfJetQualityCleaning' : False, # bool
    'doTimeQualityCleaning' : False, # bool
    'doEMfCleaningHighEta' : False, # bool
    'doEMfCleaningLowEta' : False, # bool
    'applyCleaningToHighEtJets' : True, # bool
    'applyCleaningToLowEtJets' : True, # bool
    'cleaningHighEtThreshold' : 1.00000e+06, # float
    'cleaningLowEtThreshold' : 20000.0, # float
    'leadingCellsThr' : 1, # int
    'hecfThrN' : 0.900000, # float
    'hecfThrQ' : 0.800000, # float
    'jetQualityThrH' : 0.800000, # float
    'jetQualityThrE' : 0.900000, # float
    'emfThrQ' : 0.990000, # float
    'etaThrEmfQ' : 2.70000, # float
    'emfThrEmfHighEta' : 0.0200000, # float
    'etaThrEmfHighEta' : 2.10000, # float
    'emfThrEmfLowEta' : 0.0100000, # float
    'etaThrEmfLowEta' : 2.10000, # float
    'timeThrTimeQuality' : 35.0000, # float
    'qualityThrTimeQuality' : 0.500000, # float
    'doBasicCleaning' : False, # bool
    'n90CleaningThreshold' : 2.00000, # float
    'presamplerCleaningThreshold' : 0.900000, # float
    'negativeECleaningThreshold' : -60000.0, # float
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'Etcut_L2' : """ cut value for L2 jet et """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2JetHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2JetHypo'
  pass # class TrigL2JetHypo

class TrigL2JetHypoNoise( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'Etcut_L2' : 20000.000, # float
    'doMonitoring_L2' : False, # bool
    'AcceptAll' : False, # bool
    'doNLeadingCellsUncleaning' : True, # bool
    'doJetQualityUncleaning' : True, # bool
    'leadingCellsThr' : 10, # int
    'jetQualityThr' : 0.600000, # float
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'Etcut_L2' : """ cut value for L2 jet et """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2JetHypoNoise, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2JetHypoNoise'
  pass # class TrigL2JetHypoNoise

class TrigL2JetMctHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'JetMctCut' : 150000., # float
    'ptHardJetCut' : 90000.0, # float
    'ptSoftJetCut' : 90000.0, # float
    'doMonitoring_L2' : True, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'ptHardJetCut' : """ Pt threshold for the hardest L2 jet """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'JetMctCut' : """ Mct cut on the L2 jets  """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
    'ptSoftJetCut' : """ Pt threshold for the 2nd hardest L2 jet """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2JetMctHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2JetMctHypo'
  pass # class TrigL2JetMctHypo

class TrigL2MultiJetAllTE( ConfigurableAlgorithm ) :
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
    'provideInactiveTEs' : False, # bool
    'jetInputKey' : 'TrigT2CaloJet', # str
    'Etcut_L2' : 20000.000, # float
    'Multiplicity_L2' : 1, # int
    'EtThresholds' : [  ], # list
    'etaMinCut' : 0.0000000, # float
    'etaMaxCut' : 3.2000000, # float
    'n90Cut' : 0, # int
    'etaMaxN90Cut' : 3.2000000, # float
    'doMonitoring_L2' : False, # bool
    'AcceptAll' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'provideInactiveTEs' : """ Use inactive TriggerElements for seeding the algorithm. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'Multiplicity_L2' : """ cut value for L2 jet multiplicity """,
    'Etcut_L2' : """ cut value for L2 jet et """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2MultiJetAllTE, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2MultiJetAllTE'
  pass # class TrigL2MultiJetAllTE

class TrigL2MultiJetHypo( ConfigurableAlgorithm ) :
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
    'forceAccept' : False, # bool
    'jetInputKey' : 'TrigT2CaloJet', # str
    'Etcut_L2' : 20000.000, # float
    'Multiplicity_L2' : 1, # int
    'EtThresholds' : [  ], # list
    'etaMinCut' : 0.0000000, # float
    'etaMaxCut' : 3.2000000, # float
    'doMonitoring_L2' : False, # bool
    'AcceptAll' : False, # bool
  }
  _propertyDocDct = { 
    'doOperationalInfo' : """ Adds to each prcessed RoI OperataionalInfo object with timing """,
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'RegisterForContextService' : """ The flag to enforce the registration for Algorithm Context Service """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'forceAccept' : """ Forces the decision of hypo to be always 'passed'. Algorithm is run though. """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
    'ErrorCodeMap' : """ ErrorCodes remapping """,
    'doTiming' : """ Enables timing measurement for this algorithm """,
    'Multiplicity_L2' : """ cut value for L2 jet multiplicity """,
    'Etcut_L2' : """ cut value for L2 jet et """,
    'AthenaMonTools' : """ List of monitoring tools to be run withi this instance, if incorrect then tool is silently skipped. """,
    'doMonitoring_L2' : """ switch on/off monitoring """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(TrigL2MultiJetHypo, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'TrigJetHypo'
  def getType( self ):
      return 'TrigL2MultiJetHypo'
  pass # class TrigL2MultiJetHypo
