#-- start of make_header -----------------

#====================================
#  Document install_metpython_modules
#
#   Generated Fri Nov 14 10:51:42 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_metpython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_metpython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_metpython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_metpython_modules = $(TriggerMenu_tag)_install_metpython_modules.make
cmt_local_tagfile_install_metpython_modules = $(bin)$(TriggerMenu_tag)_install_metpython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_metpython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_metpython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_metpython_modules)
#-include $(cmt_local_tagfile_install_metpython_modules)

ifdef cmt_install_metpython_modules_has_target_tag

cmt_final_setup_install_metpython_modules = $(bin)setup_install_metpython_modules.make
cmt_dependencies_in_install_metpython_modules = $(bin)dependencies_install_metpython_modules.in
#cmt_final_setup_install_metpython_modules = $(bin)TriggerMenu_install_metpython_modulessetup.make
cmt_local_install_metpython_modules_makefile = $(bin)install_metpython_modules.make

else

cmt_final_setup_install_metpython_modules = $(bin)setup.make
cmt_dependencies_in_install_metpython_modules = $(bin)dependencies.in
#cmt_final_setup_install_metpython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_metpython_modules_makefile = $(bin)install_metpython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_metpython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_metpython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_metpython_modules/
#install_metpython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/met/

install_metpython_modules :: install_metpython_modulesinstall ;

install :: install_metpython_modulesinstall ;

install_metpython_modulesclean :: install_metpython_modulesuninstall

uninstall :: install_metpython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_metpython_modulesinstall :: ;

__init___py_dependencies = ../python/met/__init__.py
MissingETDef_py_dependencies = ../python/met/MissingETDef.py
METSliceFlags_py_dependencies = ../python/met/METSliceFlags.py
generateMETChainDefs_py_dependencies = ../python/met/generateMETChainDefs.py


install_metpython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/met/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/met/__init__.py : ;

install_metpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_metpython_modulesinstall :: ${install_dir}/MissingETDef.py ;

${install_dir}/MissingETDef.py :: ../python/met/MissingETDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/MissingETDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MissingETDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/met/MissingETDef.py : ;

install_metpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/MissingETDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MissingETDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_metpython_modulesinstall :: ${install_dir}/METSliceFlags.py ;

${install_dir}/METSliceFlags.py :: ../python/met/METSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/METSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "METSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/met/METSliceFlags.py : ;

install_metpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/METSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "METSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_metpython_modulesinstall :: ${install_dir}/generateMETChainDefs.py ;

${install_dir}/generateMETChainDefs.py :: ../python/met/generateMETChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/generateMETChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateMETChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/met/generateMETChainDefs.py : ;

install_metpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/met/generateMETChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateMETChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_metpython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_metpython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_metpython_modulesclean ::
#-- end of cleanup_header ---------------
