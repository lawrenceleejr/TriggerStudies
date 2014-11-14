#-- start of make_header -----------------

#====================================
#  Library TrigJetHypo
#
#   Generated Fri Nov 14 14:40:07 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigJetHypo_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigJetHypo_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigJetHypo

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypo = $(TrigJetHypo_tag)_TrigJetHypo.make
cmt_local_tagfile_TrigJetHypo = $(bin)$(TrigJetHypo_tag)_TrigJetHypo.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypo = $(TrigJetHypo_tag).make
cmt_local_tagfile_TrigJetHypo = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_TrigJetHypo)
#-include $(cmt_local_tagfile_TrigJetHypo)

ifdef cmt_TrigJetHypo_has_target_tag

cmt_final_setup_TrigJetHypo = $(bin)setup_TrigJetHypo.make
cmt_dependencies_in_TrigJetHypo = $(bin)dependencies_TrigJetHypo.in
#cmt_final_setup_TrigJetHypo = $(bin)TrigJetHypo_TrigJetHyposetup.make
cmt_local_TrigJetHypo_makefile = $(bin)TrigJetHypo.make

else

cmt_final_setup_TrigJetHypo = $(bin)setup.make
cmt_dependencies_in_TrigJetHypo = $(bin)dependencies.in
#cmt_final_setup_TrigJetHypo = $(bin)TrigJetHyposetup.make
cmt_local_TrigJetHypo_makefile = $(bin)TrigJetHypo.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#TrigJetHypo :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigJetHypo'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigJetHypo/
#TrigJetHypo::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

TrigJetHypolibname   = $(bin)$(library_prefix)TrigJetHypo$(library_suffix)
TrigJetHypolib       = $(TrigJetHypolibname).a
TrigJetHypostamp     = $(bin)TrigJetHypo.stamp
TrigJetHyposhstamp   = $(bin)TrigJetHypo.shstamp

TrigJetHypo :: dirs  TrigJetHypoLIB
	$(echo) "TrigJetHypo ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#TrigJetHypoLIB :: $(TrigJetHypolib) $(TrigJetHyposhstamp)
TrigJetHypoLIB :: $(TrigJetHyposhstamp)
	$(echo) "TrigJetHypo : library ok"

$(TrigJetHypolib) :: $(bin)TrigJetHypo_entries.o $(bin)TrigJetHypo_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(TrigJetHypolib) $?
	$(lib_silent) $(ranlib) $(TrigJetHypolib)
	$(lib_silent) cat /dev/null >$(TrigJetHypostamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

#
# We add one level of dependency upon the true shared library 
# (rather than simply upon the stamp file)
# this is for cases where the shared library has not been built
# while the stamp was created (error??) 
#

$(TrigJetHypolibname).$(shlibsuffix) :: $(bin)TrigJetHypo_entries.o $(bin)TrigJetHypo_load.o $(use_requirements) $(TrigJetHypostamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)TrigJetHypo_entries.o $(bin)TrigJetHypo_load.o $(TrigJetHypo_shlibflags)
	$(lib_silent) cat /dev/null >$(TrigJetHypostamp) && \
	  cat /dev/null >$(TrigJetHyposhstamp)

$(TrigJetHyposhstamp) :: $(TrigJetHypolibname).$(shlibsuffix)
	$(lib_silent) if test -f $(TrigJetHypolibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(TrigJetHypostamp) && \
	  cat /dev/null >$(TrigJetHyposhstamp) ; fi

TrigJetHypoclean ::
	$(cleanup_echo) objects TrigJetHypo
	$(cleanup_silent) /bin/rm -f $(bin)TrigJetHypo_entries.o $(bin)TrigJetHypo_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)TrigJetHypo_entries.o $(bin)TrigJetHypo_load.o) $(patsubst %.o,%.dep,$(bin)TrigJetHypo_entries.o $(bin)TrigJetHypo_load.o) $(patsubst %.o,%.d.stamp,$(bin)TrigJetHypo_entries.o $(bin)TrigJetHypo_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf TrigJetHypo_deps TrigJetHypo_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
TrigJetHypoinstallname = $(library_prefix)TrigJetHypo$(library_suffix).$(shlibsuffix)

TrigJetHypo :: TrigJetHypoinstall ;

install :: TrigJetHypoinstall ;

TrigJetHypoinstall :: $(install_dir)/$(TrigJetHypoinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(TrigJetHypoinstallname) :: $(bin)$(TrigJetHypoinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TrigJetHypoinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##TrigJetHypoclean :: TrigJetHypouninstall

uninstall :: TrigJetHypouninstall ;

TrigJetHypouninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TrigJetHypoinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigJetHypo_entries.d

$(bin)$(binobj)TrigJetHypo_entries.d :

$(bin)$(binobj)TrigJetHypo_entries.o : $(cmt_final_setup_TrigJetHypo)

$(bin)$(binobj)TrigJetHypo_entries.o : $(src)components/TrigJetHypo_entries.cxx
	$(cpp_echo) $(src)components/TrigJetHypo_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypo_pp_cppflags) $(lib_TrigJetHypo_pp_cppflags) $(TrigJetHypo_entries_pp_cppflags) $(use_cppflags) $(TrigJetHypo_cppflags) $(lib_TrigJetHypo_cppflags) $(TrigJetHypo_entries_cppflags) $(TrigJetHypo_entries_cxx_cppflags) -I../src/components $(src)components/TrigJetHypo_entries.cxx
endif
endif

else
$(bin)TrigJetHypo_dependencies.make : $(TrigJetHypo_entries_cxx_dependencies)

$(bin)TrigJetHypo_dependencies.make : $(src)components/TrigJetHypo_entries.cxx

$(bin)$(binobj)TrigJetHypo_entries.o : $(TrigJetHypo_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/TrigJetHypo_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypo_pp_cppflags) $(lib_TrigJetHypo_pp_cppflags) $(TrigJetHypo_entries_pp_cppflags) $(use_cppflags) $(TrigJetHypo_cppflags) $(lib_TrigJetHypo_cppflags) $(TrigJetHypo_entries_cppflags) $(TrigJetHypo_entries_cxx_cppflags) -I../src/components $(src)components/TrigJetHypo_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigJetHypo_load.d

$(bin)$(binobj)TrigJetHypo_load.d :

$(bin)$(binobj)TrigJetHypo_load.o : $(cmt_final_setup_TrigJetHypo)

$(bin)$(binobj)TrigJetHypo_load.o : $(src)components/TrigJetHypo_load.cxx
	$(cpp_echo) $(src)components/TrigJetHypo_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypo_pp_cppflags) $(lib_TrigJetHypo_pp_cppflags) $(TrigJetHypo_load_pp_cppflags) $(use_cppflags) $(TrigJetHypo_cppflags) $(lib_TrigJetHypo_cppflags) $(TrigJetHypo_load_cppflags) $(TrigJetHypo_load_cxx_cppflags) -I../src/components $(src)components/TrigJetHypo_load.cxx
endif
endif

else
$(bin)TrigJetHypo_dependencies.make : $(TrigJetHypo_load_cxx_dependencies)

$(bin)TrigJetHypo_dependencies.make : $(src)components/TrigJetHypo_load.cxx

$(bin)$(binobj)TrigJetHypo_load.o : $(TrigJetHypo_load_cxx_dependencies)
	$(cpp_echo) $(src)components/TrigJetHypo_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypo_pp_cppflags) $(lib_TrigJetHypo_pp_cppflags) $(TrigJetHypo_load_pp_cppflags) $(use_cppflags) $(TrigJetHypo_cppflags) $(lib_TrigJetHypo_cppflags) $(TrigJetHypo_load_cppflags) $(TrigJetHypo_load_cxx_cppflags) -I../src/components $(src)components/TrigJetHypo_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: TrigJetHypoclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigJetHypo.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigJetHypoclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library TrigJetHypo
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)TrigJetHypo$(library_suffix).a $(library_prefix)TrigJetHypo$(library_suffix).$(shlibsuffix) TrigJetHypo.stamp TrigJetHypo.shstamp
#-- end of cleanup_library ---------------