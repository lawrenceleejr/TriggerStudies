#-- start of make_header -----------------

#====================================
#  Document TrigHLTJetHemisphereRecConf
#
#   Generated Fri Nov 14 11:43:05 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigHLTJetHemisphereRecConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigHLTJetHemisphereRecConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigHLTJetHemisphereRecConf

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecConf = $(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecConf.make
cmt_local_tagfile_TrigHLTJetHemisphereRecConf = $(bin)$(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecConf = $(TrigHLTJetHemisphereRec_tag).make
cmt_local_tagfile_TrigHLTJetHemisphereRecConf = $(bin)$(TrigHLTJetHemisphereRec_tag).make

endif

include $(cmt_local_tagfile_TrigHLTJetHemisphereRecConf)
#-include $(cmt_local_tagfile_TrigHLTJetHemisphereRecConf)

ifdef cmt_TrigHLTJetHemisphereRecConf_has_target_tag

cmt_final_setup_TrigHLTJetHemisphereRecConf = $(bin)setup_TrigHLTJetHemisphereRecConf.make
cmt_dependencies_in_TrigHLTJetHemisphereRecConf = $(bin)dependencies_TrigHLTJetHemisphereRecConf.in
#cmt_final_setup_TrigHLTJetHemisphereRecConf = $(bin)TrigHLTJetHemisphereRec_TrigHLTJetHemisphereRecConfsetup.make
cmt_local_TrigHLTJetHemisphereRecConf_makefile = $(bin)TrigHLTJetHemisphereRecConf.make

else

cmt_final_setup_TrigHLTJetHemisphereRecConf = $(bin)setup.make
cmt_dependencies_in_TrigHLTJetHemisphereRecConf = $(bin)dependencies.in
#cmt_final_setup_TrigHLTJetHemisphereRecConf = $(bin)TrigHLTJetHemisphereRecsetup.make
cmt_local_TrigHLTJetHemisphereRecConf_makefile = $(bin)TrigHLTJetHemisphereRecConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigHLTJetHemisphereRecsetup.make

#TrigHLTJetHemisphereRecConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigHLTJetHemisphereRecConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigHLTJetHemisphereRecConf/
#TrigHLTJetHemisphereRecConf::
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

.PHONY: TrigHLTJetHemisphereRecConf TrigHLTJetHemisphereRecConfclean

confpy  := TrigHLTJetHemisphereRecConf.py
conflib := $(bin)$(library_prefix)TrigHLTJetHemisphereRec.$(shlibsuffix)
confdb  := TrigHLTJetHemisphereRec.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

TrigHLTJetHemisphereRecConf :: TrigHLTJetHemisphereRecConfinstall

install :: TrigHLTJetHemisphereRecConfinstall

TrigHLTJetHemisphereRecConfinstall : /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec/$(confpy)
	@echo "Installing /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec in /afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec /afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python ; \

/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec/$(confpy) : $(conflib) /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)TrigHLTJetHemisphereRec.$(shlibsuffix)

/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec:
	@ if [ ! -d /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec ] ; then mkdir -p /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec ; fi ;

TrigHLTJetHemisphereRecConfclean :: TrigHLTJetHemisphereRecConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec/$(confpy) /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec/$(confdb)

uninstall :: TrigHLTJetHemisphereRecConfuninstall

TrigHLTJetHemisphereRecConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python
libTrigHLTJetHemisphereRec_so_dependencies = ../x86_64-slc6-gcc47-opt/libTrigHLTJetHemisphereRec.so
#-- start of cleanup_header --------------

clean :: TrigHLTJetHemisphereRecConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigHLTJetHemisphereRecConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigHLTJetHemisphereRecConfclean ::
#-- end of cleanup_header ---------------
