#-- start of make_header -----------------

#====================================
#  Document install_combinedpython_modules
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

cmt_install_combinedpython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_combinedpython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_combinedpython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_combinedpython_modules = $(TriggerMenu_tag)_install_combinedpython_modules.make
cmt_local_tagfile_install_combinedpython_modules = $(bin)$(TriggerMenu_tag)_install_combinedpython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_combinedpython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_combinedpython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_combinedpython_modules)
#-include $(cmt_local_tagfile_install_combinedpython_modules)

ifdef cmt_install_combinedpython_modules_has_target_tag

cmt_final_setup_install_combinedpython_modules = $(bin)setup_install_combinedpython_modules.make
cmt_dependencies_in_install_combinedpython_modules = $(bin)dependencies_install_combinedpython_modules.in
#cmt_final_setup_install_combinedpython_modules = $(bin)TriggerMenu_install_combinedpython_modulessetup.make
cmt_local_install_combinedpython_modules_makefile = $(bin)install_combinedpython_modules.make

else

cmt_final_setup_install_combinedpython_modules = $(bin)setup.make
cmt_dependencies_in_install_combinedpython_modules = $(bin)dependencies.in
#cmt_final_setup_install_combinedpython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_combinedpython_modules_makefile = $(bin)install_combinedpython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_combinedpython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_combinedpython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_combinedpython_modules/
#install_combinedpython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/combined/

install_combinedpython_modules :: install_combinedpython_modulesinstall ;

install :: install_combinedpython_modulesinstall ;

install_combinedpython_modulesclean :: install_combinedpython_modulesuninstall

uninstall :: install_combinedpython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_combinedpython_modulesinstall :: ;

CombinedSliceFlags_py_dependencies = ../python/combined/CombinedSliceFlags.py
__init___py_dependencies = ../python/combined/__init__.py
generateCombinedChainDefs_py_dependencies = ../python/combined/generateCombinedChainDefs.py
CombinedChainMerger_py_dependencies = ../python/combined/CombinedChainMerger.py
CombinedTopos_py_dependencies = ../python/combined/CombinedTopos.py


install_combinedpython_modulesinstall :: ${install_dir}/CombinedSliceFlags.py ;

${install_dir}/CombinedSliceFlags.py :: ../python/combined/CombinedSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/CombinedSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CombinedSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/combined/CombinedSliceFlags.py : ;

install_combinedpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/CombinedSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CombinedSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_combinedpython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/combined/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/combined/__init__.py : ;

install_combinedpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_combinedpython_modulesinstall :: ${install_dir}/generateCombinedChainDefs.py ;

${install_dir}/generateCombinedChainDefs.py :: ../python/combined/generateCombinedChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/generateCombinedChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateCombinedChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/combined/generateCombinedChainDefs.py : ;

install_combinedpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/generateCombinedChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateCombinedChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_combinedpython_modulesinstall :: ${install_dir}/CombinedChainMerger.py ;

${install_dir}/CombinedChainMerger.py :: ../python/combined/CombinedChainMerger.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/CombinedChainMerger.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CombinedChainMerger.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/combined/CombinedChainMerger.py : ;

install_combinedpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/CombinedChainMerger.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CombinedChainMerger.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_combinedpython_modulesinstall :: ${install_dir}/CombinedTopos.py ;

${install_dir}/CombinedTopos.py :: ../python/combined/CombinedTopos.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/CombinedTopos.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CombinedTopos.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/combined/CombinedTopos.py : ;

install_combinedpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/combined/CombinedTopos.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CombinedTopos.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_combinedpython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_combinedpython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_combinedpython_modulesclean ::
#-- end of cleanup_header ---------------
