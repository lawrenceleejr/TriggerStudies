#-- start of make_header -----------------

#====================================
#  Document install_scripts
#
#   Generated Fri Nov 14 10:52:15 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_scripts_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_scripts_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_scripts

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_install_scripts = $(TriggerMenuXML_tag)_install_scripts.make
cmt_local_tagfile_install_scripts = $(bin)$(TriggerMenuXML_tag)_install_scripts.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_install_scripts = $(TriggerMenuXML_tag).make
cmt_local_tagfile_install_scripts = $(bin)$(TriggerMenuXML_tag).make

endif

include $(cmt_local_tagfile_install_scripts)
#-include $(cmt_local_tagfile_install_scripts)

ifdef cmt_install_scripts_has_target_tag

cmt_final_setup_install_scripts = $(bin)setup_install_scripts.make
cmt_dependencies_in_install_scripts = $(bin)dependencies_install_scripts.in
#cmt_final_setup_install_scripts = $(bin)TriggerMenuXML_install_scriptssetup.make
cmt_local_install_scripts_makefile = $(bin)install_scripts.make

else

cmt_final_setup_install_scripts = $(bin)setup.make
cmt_dependencies_in_install_scripts = $(bin)dependencies.in
#cmt_final_setup_install_scripts = $(bin)TriggerMenuXMLsetup.make
cmt_local_install_scripts_makefile = $(bin)install_scripts.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenuXMLsetup.make

#install_scripts :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_scripts'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_scripts/
#install_scripts::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------


ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/share/bin

install_scripts :: install_scriptsinstall ;

install :: install_scriptsinstall ;

install_scriptsclean :: install_scriptsuninstall

uninstall :: install_scriptsuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_scriptsinstall :: ;

CreateTriggerMenuXML_sh_dependencies = ../scripts/CreateTriggerMenuXML.sh


install_scriptsinstall :: ${install_dir}/CreateTriggerMenuXML.sh ;

${install_dir}/CreateTriggerMenuXML.sh :: ../scripts/CreateTriggerMenuXML.sh
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../scripts/CreateTriggerMenuXML.sh`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CreateTriggerMenuXML.sh" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../scripts/CreateTriggerMenuXML.sh : ;

install_scriptsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../scripts/CreateTriggerMenuXML.sh`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CreateTriggerMenuXML.sh" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_scriptsclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_scripts.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_scriptsclean ::
#-- end of cleanup_header ---------------