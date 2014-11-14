#-- start of make_header -----------------

#====================================
#  Document install_l1topopython_modules
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

cmt_install_l1topopython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_l1topopython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_l1topopython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_l1topopython_modules = $(TriggerMenu_tag)_install_l1topopython_modules.make
cmt_local_tagfile_install_l1topopython_modules = $(bin)$(TriggerMenu_tag)_install_l1topopython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_l1topopython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_l1topopython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_l1topopython_modules)
#-include $(cmt_local_tagfile_install_l1topopython_modules)

ifdef cmt_install_l1topopython_modules_has_target_tag

cmt_final_setup_install_l1topopython_modules = $(bin)setup_install_l1topopython_modules.make
cmt_dependencies_in_install_l1topopython_modules = $(bin)dependencies_install_l1topopython_modules.in
#cmt_final_setup_install_l1topopython_modules = $(bin)TriggerMenu_install_l1topopython_modulessetup.make
cmt_local_install_l1topopython_modules_makefile = $(bin)install_l1topopython_modules.make

else

cmt_final_setup_install_l1topopython_modules = $(bin)setup.make
cmt_dependencies_in_install_l1topopython_modules = $(bin)dependencies.in
#cmt_final_setup_install_l1topopython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_l1topopython_modules_makefile = $(bin)install_l1topopython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_l1topopython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_l1topopython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_l1topopython_modules/
#install_l1topopython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/l1topo/

install_l1topopython_modules :: install_l1topopython_modulesinstall ;

install :: install_l1topopython_modulesinstall ;

install_l1topopython_modulesclean :: install_l1topopython_modulesuninstall

uninstall :: install_l1topopython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_l1topopython_modulesinstall :: ;

L1TopoFlags_py_dependencies = ../python/l1topo/L1TopoFlags.py
__init___py_dependencies = ../python/l1topo/__init__.py
TopoOutput_py_dependencies = ../python/l1topo/TopoOutput.py
L1TopoMenu_py_dependencies = ../python/l1topo/L1TopoMenu.py
TopoAlgos_py_dependencies = ../python/l1topo/TopoAlgos.py


install_l1topopython_modulesinstall :: ${install_dir}/L1TopoFlags.py ;

${install_dir}/L1TopoFlags.py :: ../python/l1topo/L1TopoFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/L1TopoFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1TopoFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topo/L1TopoFlags.py : ;

install_l1topopython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/L1TopoFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1TopoFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topopython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/l1topo/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topo/__init__.py : ;

install_l1topopython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topopython_modulesinstall :: ${install_dir}/TopoOutput.py ;

${install_dir}/TopoOutput.py :: ../python/l1topo/TopoOutput.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/TopoOutput.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TopoOutput.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topo/TopoOutput.py : ;

install_l1topopython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/TopoOutput.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TopoOutput.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topopython_modulesinstall :: ${install_dir}/L1TopoMenu.py ;

${install_dir}/L1TopoMenu.py :: ../python/l1topo/L1TopoMenu.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/L1TopoMenu.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1TopoMenu.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topo/L1TopoMenu.py : ;

install_l1topopython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/L1TopoMenu.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1TopoMenu.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topopython_modulesinstall :: ${install_dir}/TopoAlgos.py ;

${install_dir}/TopoAlgos.py :: ../python/l1topo/TopoAlgos.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/TopoAlgos.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TopoAlgos.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topo/TopoAlgos.py : ;

install_l1topopython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topo/TopoAlgos.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TopoAlgos.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_l1topopython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_l1topopython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_l1topopython_modulesclean ::
#-- end of cleanup_header ---------------