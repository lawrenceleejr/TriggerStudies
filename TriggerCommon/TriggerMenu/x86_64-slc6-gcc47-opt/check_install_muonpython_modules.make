#-- start of make_header -----------------

#====================================
#  Document check_install_muonpython_modules
#
#   Generated Fri Nov 14 10:51:36 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_check_install_muonpython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_check_install_muonpython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_check_install_muonpython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_check_install_muonpython_modules = $(TriggerMenu_tag)_check_install_muonpython_modules.make
cmt_local_tagfile_check_install_muonpython_modules = $(bin)$(TriggerMenu_tag)_check_install_muonpython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_check_install_muonpython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_check_install_muonpython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_check_install_muonpython_modules)
#-include $(cmt_local_tagfile_check_install_muonpython_modules)

ifdef cmt_check_install_muonpython_modules_has_target_tag

cmt_final_setup_check_install_muonpython_modules = $(bin)setup_check_install_muonpython_modules.make
cmt_dependencies_in_check_install_muonpython_modules = $(bin)dependencies_check_install_muonpython_modules.in
#cmt_final_setup_check_install_muonpython_modules = $(bin)TriggerMenu_check_install_muonpython_modulessetup.make
cmt_local_check_install_muonpython_modules_makefile = $(bin)check_install_muonpython_modules.make

else

cmt_final_setup_check_install_muonpython_modules = $(bin)setup.make
cmt_dependencies_in_check_install_muonpython_modules = $(bin)dependencies.in
#cmt_final_setup_check_install_muonpython_modules = $(bin)TriggerMenusetup.make
cmt_local_check_install_muonpython_modules_makefile = $(bin)check_install_muonpython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#check_install_muonpython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'check_install_muonpython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = check_install_muonpython_modules/
#check_install_muonpython_modules::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of cmt_action_runner_header ---------------

ifdef ONCE
check_install_muonpython_modules_once = 1
endif

ifdef check_install_muonpython_modules_once

check_install_muonpython_modulesactionstamp = $(bin)check_install_muonpython_modules.actionstamp
#check_install_muonpython_modulesactionstamp = check_install_muonpython_modules.actionstamp

check_install_muonpython_modules :: $(check_install_muonpython_modulesactionstamp)
	$(echo) "check_install_muonpython_modules ok"
#	@echo check_install_muonpython_modules ok

#$(check_install_muonpython_modulesactionstamp) :: $(check_install_muonpython_modules_dependencies)
$(check_install_muonpython_modulesactionstamp) ::
	$(silent) /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/cmt/atlas_check_installations.sh -files=' -s=../python/muon/ *.py ' -installdir=/afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python/TriggerMenu/muon/ -level=
	$(silent) cat /dev/null > $(check_install_muonpython_modulesactionstamp)
#	@echo ok > $(check_install_muonpython_modulesactionstamp)

check_install_muonpython_modulesclean ::
	$(cleanup_silent) /bin/rm -f $(check_install_muonpython_modulesactionstamp)

else

#check_install_muonpython_modules :: $(check_install_muonpython_modules_dependencies)
check_install_muonpython_modules ::
	$(silent) /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/cmt/atlas_check_installations.sh -files=' -s=../python/muon/ *.py ' -installdir=/afs/cern.ch/work/l/leejr/NightlyTest/InstallArea/python/TriggerMenu/muon/ -level=

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: check_install_muonpython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(check_install_muonpython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

check_install_muonpython_modulesclean ::
#-- end of cleanup_header ---------------