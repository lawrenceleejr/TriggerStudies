#!/usr/bin/env python

########### Initialization ######################################
##
##

import ROOT
import logging
import shutil
import os
import itertools



logging.basicConfig(level=logging.INFO)
from optparse import OptionParser

import atexit
@atexit.register
def quite_exit():
    ROOT.gSystem.Exit(0)


logging.info("loading packages")
ROOT.gROOT.Macro("$ROOTCOREDIR/scripts/load_packages.C")

##
##
########### Gather input ######################################
##
##

logging.info("creating new sample handler")
sh_all = ROOT.SH.SampleHandler()

# samplePattern = "*GG_direct*"
samplePattern = "Trigger_2*"

ROOT.SH.ScanDir().sampleDepth(-1).samplePattern (samplePattern).scanEOS(sh_all, "/eos/atlas/user/l/leejr/MergedTriggerNtuples/")

for sample in sh_all:
	print sample.getMetaString("sample_name")

sh_all.setMetaString("nc_tree", "tree")

mysamplehandler = sh_all


job = ROOT.EL.Job()
job.sampleHandler(mysamplehandler)


job.options().setDouble(ROOT.EL.Job.optCacheSize, 50*1024*1024)




#presel = "&& (sqrt(MET_x*MET_x+MET_y*MET_y)> 100e3) "
#presel = "&& (sqrt(MET_x*MET_x+MET_y*MET_y)> 140e3 && (Alt$(Jet_pT[1]<50e3,0) )  && Length$(Jet_pT)<10 ) "
#presel = "&& (sqrt(MET_x*MET_x+MET_y*MET_y)> 140e3) && (Alt$(Jet_pT[1]<50e3,0) ) "
presel = ""
#presel = "&& (sqrt(MET_x*MET_x+MET_y*MET_y)> 100e3) && Length$(Jet_pT)<10 "
#presel = "&& (sqrt(MET_x*MET_x+MET_y*MET_y)> 100e3) && (Alt$(Muon_pT[0]<20e3,1) )    && (Alt$(Electron_pT[0]<20e3,1) ) "
#presel = "&& (sqrt(MET_x*MET_x+MET_y*MET_y)> 100e3) && (Length$(Muon_pT)==0  ) && (Length$(Electron_pT)==0 ) "

#For emulating xe60 chains, HLT MET Cut is sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y) > 60e3

## Define your cut strings here....
cuts = {

# xe60 chains
	"l1trigger":    "( (RJVars_HLT_TriggerBits&(1<<10) ) > 0.) %s"%presel,
	"razor170trigger": "( (RJVars_HLT_TriggerBits&(1<<16) ) > 0.) %s"%presel,
	"razor170orxe100trigger": "( (RJVars_HLT_TriggerBits&(1<<10) ) > 0.) && ( (RJVars_HLT_TriggerBits&(1<<16) ) > 0. ||  (RJVars_HLT_TriggerBits&(1<<4) ) > 0.)   %s"%presel,
	"razor170nometcuttrigger": "( (RJVars_HLT_TriggerBits&(1<<16) ) > 0.) ",
	"l1nometcuttrigger": "( (RJVars_HLT_TriggerBits&(1<<10) ) > 0.) ",
	"l1notrazor170": "( (RJVars_HLT_TriggerBits&(1<<16) ) == 0) && ( (RJVars_HLT_TriggerBits&(1<<10) ) > 0.)",
	"razor185trigger": "( (RJVars_HLT_TriggerBits&(1<<17) ) > 0.) %s"%presel,
	"razor195trigger": "( (RJVars_HLT_TriggerBits&(1<<18) ) > 0.) %s"%presel,

# xe10 chains
	# "l1trigger":    "( (RJVars_HLT_TriggerBits&(1<<10) ) > 0.) %s"%presel,
	# "razor170trigger": "( (RJVars_HLT_TriggerBits&(1<<29) ) > 0.) && (sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y) > 60e3 ) %s"%presel,
	# "razor170nometcuttrigger": "( (RJVars_HLT_TriggerBits&(1<<29) ) > 0.) ",
	# "l1nometcuttrigger": "( (RJVars_HLT_TriggerBits&(1<<10) ) > 0.) ",
	# "l1notrazor170": "( (RJVars_HLT_TriggerBits&(1<<29) ) == 0) && ( (RJVars_HLT_TriggerBits&(1<<10) ) > 0.)",
	# "razor185trigger": "( (RJVars_HLT_TriggerBits&(1<<30) ) > 0.  && sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y) > 60e3 ) %s"%presel,
	# "razor195trigger": "( (RJVars_HLT_TriggerBits&(1<<31) ) > 0.  && sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y) > 60e3 ) %s"%presel,

	"metl1trigger": "(RJVars_HLT_TriggerBits&(1<<1) ) > 0.",
	"mettrigger": "(RJVars_HLT_TriggerBits&(1<<4) ) > 0.",   #xe100
}

#################################################################################################


for cut in cuts:

	## each of this histograms will be made for each cut
	print cut

	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH1F("MDR_%s"%cut, "MDR_%s"%cut, 50, 0, 5e5), 
		"RJVars_SS_MDeltaR",
		"1*(%s)"%cuts[cut]))
	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH1F("Met_%s"%cut, "Met_%s"%cut, 50, 0, 5e5), 
		"sqrt(MET_x*MET_x+MET_y*MET_y)",
		"1*(%s)"%cuts[cut]))
	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH2F("Met_MDR_%s"%cut, "Met_MDR_%s"%cut, 50, 0, 5e5, 50, 0, 5e5), 
		"sqrt(MET_x*MET_x+MET_y*MET_y)",
		"RJVars_SS_MDeltaR",
		"1*(%s)"%cuts[cut]))

#	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH2F("HLT_Met_MDR_%s"%cut, "HLT_Met_MDR_%s"%cut, 50, 0, 5e5, 50, 0, 5e5), 
#		"sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y)",
#		"RJVars_SS_MDeltaR",
#		"1*(%s)"%cuts[cut]))
#
#	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH2F("HLT_Met_MDR_%s"%cut, "HLT_Met_MDR_%s"%cut, 50, 0, 5e5, 50, 0, 5e5), 
#		"sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y)",
#		"RJVars_HLT_SS_MDeltaR",
#		"1*(%s)"%cuts[cut]))
#	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH1F("HLT_MDR_%s"%cut, "HLT_MDR_%s"%cut, 50, 0, 5e5), 
#		"RJVars_HLT_SS_MDeltaR",
#		"1*(%s)"%cuts[cut]))
#	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH1F("HLT_Met_%s"%cut, "HLT_Met_%s"%cut, 50, 0, 5e5), 
#		"sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y)",
#		"1*(%s)"%cuts[cut]))
#
#
#	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH2F("HLT_MDR_MDR_%s"%cut, "HLT_MDR_MDR_%s"%cut, 50, 0, 5e5, 50, 0, 5e5), 
#		"RJVars_SS_MDeltaR",
#		"RJVars_HLT_SS_MDeltaR",
#		"1*(%s)"%cuts[cut]))
#
#	job.algsAdd (ROOT.MD.AlgHist(ROOT.TH2F("HLT_Met_Met_%s"%cut, "HLT_Met_Met_%s"%cut, 50, 0, 5e5, 50, 0, 5e5), 
#		"sqrt(MET_x*MET_x+MET_y*MET_y)",
#		"sqrt(HLT_MET_x*HLT_MET_x+HLT_MET_y*HLT_MET_y)",
#		"1*(%s)"%cuts[cut]))



driver = ROOT.EL.DirectDriver()
if os.path.exists( "submitDir" ):
	shutil.rmtree( "submitDir" )
driver.submit(job, "submitDir" )



os.system('hadd -f run.root submitDir/hist*root*')








