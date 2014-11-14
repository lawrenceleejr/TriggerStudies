// ********************************************************************
//
// NAME:     TrigEFDPhiMetJetAllTE.h
// PACKAGE:  Trigger/TrigHypothesis/TrigJetHypo
// 
// ********************************************************************

#ifndef TRIGJETHYPO_TRIGEFDPHIMETJETALLTE_H
#define TRIGJETHYPO_TRIGEFDPHIMETJETALLTE_H

#include <string>

/// general athena stuff
#include "GaudiKernel/IToolSvc.h"
#include "GaudiKernel/StatusCode.h"
#include "GaudiKernel/ToolHandle.h"
#include "GaudiKernel/ITHistSvc.h"

// some trigger stuff
#include "TrigInterfaces/AllTEAlgo.h"
#include "TrigCaloEvent/TrigT2Jet.h"


class StoreGateSvc;

class TrigEFDPhiMetJetAllTE: public HLT::AllTEAlgo {


 public:
  TrigEFDPhiMetJetAllTE(const std::string & name, ISvcLocator* pSvcLocator);
  ~TrigEFDPhiMetJetAllTE();

  
  HLT::ErrorCode hltExecute(std::vector<std::vector<HLT::TriggerElement*> >& inputTE,
			    unsigned int outputTE);


  HLT::ErrorCode hltInitialize();
  HLT::ErrorCode hltFinalize();

  bool reset();


 private:

  //  bool m_executedEvent_EFDPhiMetJet ;
  
  int m_acceptedEvts;
  int m_rejectedEvts;
  int m_errorEvts;

  double m_MinDPhiCut;
  double m_MaxDPhiJets;
  double m_MinJetEt;
  double m_MinJetEta;
  double m_MaxJetEta;


  double m_jetet         ;
  double m_jeteta        ;
  double m_jetphi        ;


  //Monitored variables


  double m_n_jets        ;
  double m_jet1et         ;
  double m_jet1eta        ;
  double m_jet1phi        ;
  double m_jet_met_phi1  ;  
  double m_jet2et         ;
  double m_jet2eta        ;
  double m_jet2phi        ;
  double m_jet_met_phi2  ;
  
  double m_n_jets_Pass  ; 
  double m_jet1et_Pass   ; 
  double m_jet1eta_Pass  ; 
  double m_jet1phi_Pass  ; 
  double m_jet_met_phi1_Pass ; 
  double m_jet2et_Pass   ; 
  double m_jet2eta_Pass  ; 
  double m_jet2phi_Pass  ; 
  double m_jet_met_phi2_Pass ;
  
};


#endif
