#-- start of make_header -----------------

#====================================
#  Document TrigJetHypoComponentsList
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

cmt_TrigJetHypoComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigJetHypoComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigJetHypoComponentsList

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoComponentsList = $(TrigJetHypo_tag)_TrigJetHypoComponentsList.make
cmt_local_tagfile_TrigJetHypoComponentsList = $(bin)$(TrigJetHypo_tag)_TrigJetHypoComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoComponentsList = $(TrigJetHypo_tag).make
cmt_local_tagfile_TrigJetHypoComponentsList = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_TrigJetHypoComponentsList)
#-include $(cmt_local_tagfile_TrigJetHypoComponentsList)

ifdef cmt_TrigJetHypoComponentsList_has_target_tag

cmt_final_setup_TrigJetHypoComponentsList = $(bin)setup_TrigJetHypoComponentsList.make
cmt_dependencies_in_TrigJetHypoComponentsList = $(bin)dependencies_TrigJetHypoComponentsList.in
#cmt_final_setup_TrigJetHypoComponentsList = $(bin)TrigJetHypo_TrigJetHypoComponentsListsetup.make
cmt_local_TrigJetHypoComponentsList_makefile = $(bin)TrigJetHypoComponentsList.make

else

cmt_final_setup_TrigJetHypoComponentsList = $(bin)setup.make
cmt_dependencies_in_TrigJetHypoComponentsList = $(bin)dependencies.in
#cmt_final_setup_TrigJetHypoComponentsList = $(bin)TrigJetHyposetup.make
cmt_local_TrigJetHypoComponentsList_makefile = $(bin)TrigJetHypoComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#TrigJetHypoComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigJetHypoComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigJetHypoComponentsList/
#TrigJetHypoComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = TrigJetHypo.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libTrigJetHypo.$(shlibsuffix)

TrigJetHypoComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: TrigJetHypoComponentsListinstall
TrigJetHypoComponentsListinstall :: TrigJetHypoComponentsList

uninstall :: TrigJetHypoComponentsListuninstall
TrigJetHypoComponentsListuninstall :: TrigJetHypoComponentsListclean

TrigJetHypoComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: TrigJetHypoComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigJetHypoComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigJetHypoComponentsListclean ::
#-- end of cleanup_header ---------------
