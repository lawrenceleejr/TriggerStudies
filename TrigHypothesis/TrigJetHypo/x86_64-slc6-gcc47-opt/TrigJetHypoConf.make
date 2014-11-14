#-- start of make_header -----------------

#====================================
#  Document TrigJetHypoConf
#
#   Generated Fri Nov 14 14:41:12 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigJetHypoConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigJetHypoConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigJetHypoConf

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoConf = $(TrigJetHypo_tag)_TrigJetHypoConf.make
cmt_local_tagfile_TrigJetHypoConf = $(bin)$(TrigJetHypo_tag)_TrigJetHypoConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoConf = $(TrigJetHypo_tag).make
cmt_local_tagfile_TrigJetHypoConf = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_TrigJetHypoConf)
#-include $(cmt_local_tagfile_TrigJetHypoConf)

ifdef cmt_TrigJetHypoConf_has_target_tag

cmt_final_setup_TrigJetHypoConf = $(bin)setup_TrigJetHypoConf.make
cmt_dependencies_in_TrigJetHypoConf = $(bin)dependencies_TrigJetHypoConf.in
#cmt_final_setup_TrigJetHypoConf = $(bin)TrigJetHypo_TrigJetHypoConfsetup.make
cmt_local_TrigJetHypoConf_makefile = $(bin)TrigJetHypoConf.make

else

cmt_final_setup_TrigJetHypoConf = $(bin)setup.make
cmt_dependencies_in_TrigJetHypoConf = $(bin)dependencies.in
#cmt_final_setup_TrigJetHypoConf = $(bin)TrigJetHyposetup.make
cmt_local_TrigJetHypoConf_makefile = $(bin)TrigJetHypoConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#TrigJetHypoConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigJetHypoConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigJetHypoConf/
#TrigJetHypoConf::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/genconfig_header
# Author: Wim Lavrijsen (WLavrijsen@lbl.gov)

# Use genconf.exe to create configurables python modules, then have the
# normal python install procedure take over.

.PHONY: TrigJetHypoConf TrigJetHypoConfclean

confpy  := TrigJetHypoConf.py
conflib := $(bin)$(library_prefix)TrigJetHypo.$(shlibsuffix)
confdb  := TrigJetHypo.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

TrigJetHypoConf :: TrigJetHypoConfinstall

install :: TrigJetHypoConfinstall

TrigJetHypoConfinstall : /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo/$(confpy)
	@echo "Installing /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo in /afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo /afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python ; \

/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo/$(confpy) : $(conflib) /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)TrigJetHypo.$(shlibsuffix)

/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo:
	@ if [ ! -d /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo ] ; then mkdir -p /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo ; fi ;

TrigJetHypoConfclean :: TrigJetHypoConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo/$(confpy) /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo/$(confdb)

uninstall :: TrigJetHypoConfuninstall

TrigJetHypoConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python
libTrigJetHypo_so_dependencies = ../x86_64-slc6-gcc47-opt/libTrigJetHypo.so
#-- start of cleanup_header --------------

clean :: TrigJetHypoConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigJetHypoConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigJetHypoConfclean ::
#-- end of cleanup_header ---------------
