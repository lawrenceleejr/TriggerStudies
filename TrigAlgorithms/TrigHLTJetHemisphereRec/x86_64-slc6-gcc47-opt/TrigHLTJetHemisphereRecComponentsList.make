#-- start of make_header -----------------

#====================================
#  Document TrigHLTJetHemisphereRecComponentsList
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

cmt_TrigHLTJetHemisphereRecComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigHLTJetHemisphereRecComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigHLTJetHemisphereRecComponentsList

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecComponentsList = $(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecComponentsList.make
cmt_local_tagfile_TrigHLTJetHemisphereRecComponentsList = $(bin)$(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecComponentsList = $(TrigHLTJetHemisphereRec_tag).make
cmt_local_tagfile_TrigHLTJetHemisphereRecComponentsList = $(bin)$(TrigHLTJetHemisphereRec_tag).make

endif

include $(cmt_local_tagfile_TrigHLTJetHemisphereRecComponentsList)
#-include $(cmt_local_tagfile_TrigHLTJetHemisphereRecComponentsList)

ifdef cmt_TrigHLTJetHemisphereRecComponentsList_has_target_tag

cmt_final_setup_TrigHLTJetHemisphereRecComponentsList = $(bin)setup_TrigHLTJetHemisphereRecComponentsList.make
cmt_dependencies_in_TrigHLTJetHemisphereRecComponentsList = $(bin)dependencies_TrigHLTJetHemisphereRecComponentsList.in
#cmt_final_setup_TrigHLTJetHemisphereRecComponentsList = $(bin)TrigHLTJetHemisphereRec_TrigHLTJetHemisphereRecComponentsListsetup.make
cmt_local_TrigHLTJetHemisphereRecComponentsList_makefile = $(bin)TrigHLTJetHemisphereRecComponentsList.make

else

cmt_final_setup_TrigHLTJetHemisphereRecComponentsList = $(bin)setup.make
cmt_dependencies_in_TrigHLTJetHemisphereRecComponentsList = $(bin)dependencies.in
#cmt_final_setup_TrigHLTJetHemisphereRecComponentsList = $(bin)TrigHLTJetHemisphereRecsetup.make
cmt_local_TrigHLTJetHemisphereRecComponentsList_makefile = $(bin)TrigHLTJetHemisphereRecComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigHLTJetHemisphereRecsetup.make

#TrigHLTJetHemisphereRecComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigHLTJetHemisphereRecComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigHLTJetHemisphereRecComponentsList/
#TrigHLTJetHemisphereRecComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = TrigHLTJetHemisphereRec.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libTrigHLTJetHemisphereRec.$(shlibsuffix)

TrigHLTJetHemisphereRecComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: TrigHLTJetHemisphereRecComponentsListinstall
TrigHLTJetHemisphereRecComponentsListinstall :: TrigHLTJetHemisphereRecComponentsList

uninstall :: TrigHLTJetHemisphereRecComponentsListuninstall
TrigHLTJetHemisphereRecComponentsListuninstall :: TrigHLTJetHemisphereRecComponentsListclean

TrigHLTJetHemisphereRecComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: TrigHLTJetHemisphereRecComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigHLTJetHemisphereRecComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigHLTJetHemisphereRecComponentsListclean ::
#-- end of cleanup_header ---------------
