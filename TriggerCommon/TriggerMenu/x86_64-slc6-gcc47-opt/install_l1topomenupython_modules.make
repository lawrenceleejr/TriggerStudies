#-- start of make_header -----------------

#====================================
#  Document install_l1topomenupython_modules
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

cmt_install_l1topomenupython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_l1topomenupython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_l1topomenupython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_l1topomenupython_modules = $(TriggerMenu_tag)_install_l1topomenupython_modules.make
cmt_local_tagfile_install_l1topomenupython_modules = $(bin)$(TriggerMenu_tag)_install_l1topomenupython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_l1topomenupython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_l1topomenupython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_l1topomenupython_modules)
#-include $(cmt_local_tagfile_install_l1topomenupython_modules)

ifdef cmt_install_l1topomenupython_modules_has_target_tag

cmt_final_setup_install_l1topomenupython_modules = $(bin)setup_install_l1topomenupython_modules.make
cmt_dependencies_in_install_l1topomenupython_modules = $(bin)dependencies_install_l1topomenupython_modules.in
#cmt_final_setup_install_l1topomenupython_modules = $(bin)TriggerMenu_install_l1topomenupython_modulessetup.make
cmt_local_install_l1topomenupython_modules_makefile = $(bin)install_l1topomenupython_modules.make

else

cmt_final_setup_install_l1topomenupython_modules = $(bin)setup.make
cmt_dependencies_in_install_l1topomenupython_modules = $(bin)dependencies.in
#cmt_final_setup_install_l1topomenupython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_l1topomenupython_modules_makefile = $(bin)install_l1topomenupython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_l1topomenupython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_l1topomenupython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_l1topomenupython_modules/
#install_l1topomenupython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/l1topomenu/

install_l1topomenupython_modules :: install_l1topomenupython_modulesinstall ;

install :: install_l1topomenupython_modulesinstall ;

install_l1topomenupython_modulesclean :: install_l1topomenupython_modulesuninstall

uninstall :: install_l1topomenupython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_l1topomenupython_modulesinstall :: ;

Menu_LS1_v1_py_dependencies = ../python/l1topomenu/Menu_LS1_v1.py
Menu_MC_pp_v5_py_dependencies = ../python/l1topomenu/Menu_MC_pp_v5.py
Menu_Physics_HI_v3_py_dependencies = ../python/l1topomenu/Menu_Physics_HI_v3.py
Menu_DC14_py_dependencies = ../python/l1topomenu/Menu_DC14.py
Menu_Physics_pp_v5_py_dependencies = ../python/l1topomenu/Menu_Physics_pp_v5.py
__init___py_dependencies = ../python/l1topomenu/__init__.py
TopoAlgoDef_py_dependencies = ../python/l1topomenu/TopoAlgoDef.py


install_l1topomenupython_modulesinstall :: ${install_dir}/Menu_LS1_v1.py ;

${install_dir}/Menu_LS1_v1.py :: ../python/l1topomenu/Menu_LS1_v1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_LS1_v1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Menu_LS1_v1.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topomenu/Menu_LS1_v1.py : ;

install_l1topomenupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_LS1_v1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Menu_LS1_v1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topomenupython_modulesinstall :: ${install_dir}/Menu_MC_pp_v5.py ;

${install_dir}/Menu_MC_pp_v5.py :: ../python/l1topomenu/Menu_MC_pp_v5.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_MC_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Menu_MC_pp_v5.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topomenu/Menu_MC_pp_v5.py : ;

install_l1topomenupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_MC_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Menu_MC_pp_v5.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topomenupython_modulesinstall :: ${install_dir}/Menu_Physics_HI_v3.py ;

${install_dir}/Menu_Physics_HI_v3.py :: ../python/l1topomenu/Menu_Physics_HI_v3.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_Physics_HI_v3.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Menu_Physics_HI_v3.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topomenu/Menu_Physics_HI_v3.py : ;

install_l1topomenupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_Physics_HI_v3.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Menu_Physics_HI_v3.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topomenupython_modulesinstall :: ${install_dir}/Menu_DC14.py ;

${install_dir}/Menu_DC14.py :: ../python/l1topomenu/Menu_DC14.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_DC14.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Menu_DC14.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topomenu/Menu_DC14.py : ;

install_l1topomenupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_DC14.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Menu_DC14.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topomenupython_modulesinstall :: ${install_dir}/Menu_Physics_pp_v5.py ;

${install_dir}/Menu_Physics_pp_v5.py :: ../python/l1topomenu/Menu_Physics_pp_v5.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_Physics_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Menu_Physics_pp_v5.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topomenu/Menu_Physics_pp_v5.py : ;

install_l1topomenupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/Menu_Physics_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Menu_Physics_pp_v5.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topomenupython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/l1topomenu/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topomenu/__init__.py : ;

install_l1topomenupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1topomenupython_modulesinstall :: ${install_dir}/TopoAlgoDef.py ;

${install_dir}/TopoAlgoDef.py :: ../python/l1topomenu/TopoAlgoDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/TopoAlgoDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TopoAlgoDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1topomenu/TopoAlgoDef.py : ;

install_l1topomenupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1topomenu/TopoAlgoDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TopoAlgoDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_l1topomenupython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_l1topomenupython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_l1topomenupython_modulesclean ::
#-- end of cleanup_header ---------------