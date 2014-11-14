#-- start of make_header -----------------

#====================================
#  Library TrigHLTJetHemisphereRec
#
#   Generated Fri Nov 14 11:41:56 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigHLTJetHemisphereRec_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigHLTJetHemisphereRec_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigHLTJetHemisphereRec

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRec = $(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRec.make
cmt_local_tagfile_TrigHLTJetHemisphereRec = $(bin)$(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRec.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRec = $(TrigHLTJetHemisphereRec_tag).make
cmt_local_tagfile_TrigHLTJetHemisphereRec = $(bin)$(TrigHLTJetHemisphereRec_tag).make

endif

include $(cmt_local_tagfile_TrigHLTJetHemisphereRec)
#-include $(cmt_local_tagfile_TrigHLTJetHemisphereRec)

ifdef cmt_TrigHLTJetHemisphereRec_has_target_tag

cmt_final_setup_TrigHLTJetHemisphereRec = $(bin)setup_TrigHLTJetHemisphereRec.make
cmt_dependencies_in_TrigHLTJetHemisphereRec = $(bin)dependencies_TrigHLTJetHemisphereRec.in
#cmt_final_setup_TrigHLTJetHemisphereRec = $(bin)TrigHLTJetHemisphereRec_TrigHLTJetHemisphereRecsetup.make
cmt_local_TrigHLTJetHemisphereRec_makefile = $(bin)TrigHLTJetHemisphereRec.make

else

cmt_final_setup_TrigHLTJetHemisphereRec = $(bin)setup.make
cmt_dependencies_in_TrigHLTJetHemisphereRec = $(bin)dependencies.in
#cmt_final_setup_TrigHLTJetHemisphereRec = $(bin)TrigHLTJetHemisphereRecsetup.make
cmt_local_TrigHLTJetHemisphereRec_makefile = $(bin)TrigHLTJetHemisphereRec.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigHLTJetHemisphereRecsetup.make

#TrigHLTJetHemisphereRec :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigHLTJetHemisphereRec'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigHLTJetHemisphereRec/
#TrigHLTJetHemisphereRec::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

TrigHLTJetHemisphereReclibname   = $(bin)$(library_prefix)TrigHLTJetHemisphereRec$(library_suffix)
TrigHLTJetHemisphereReclib       = $(TrigHLTJetHemisphereReclibname).a
TrigHLTJetHemisphereRecstamp     = $(bin)TrigHLTJetHemisphereRec.stamp
TrigHLTJetHemisphereRecshstamp   = $(bin)TrigHLTJetHemisphereRec.shstamp

TrigHLTJetHemisphereRec :: dirs  TrigHLTJetHemisphereRecLIB
	$(echo) "TrigHLTJetHemisphereRec ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#TrigHLTJetHemisphereRecLIB :: $(TrigHLTJetHemisphereReclib) $(TrigHLTJetHemisphereRecshstamp)
TrigHLTJetHemisphereRecLIB :: $(TrigHLTJetHemisphereRecshstamp)
	$(echo) "TrigHLTJetHemisphereRec : library ok"

$(TrigHLTJetHemisphereReclib) :: $(bin)TrigHLTJetHemisphereRec.o $(bin)TrigHLTJetHemisphereRec_entries.o $(bin)TrigHLTJetHemisphereRec_load.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(TrigHLTJetHemisphereReclib) $?
	$(lib_silent) $(ranlib) $(TrigHLTJetHemisphereReclib)
	$(lib_silent) cat /dev/null >$(TrigHLTJetHemisphereRecstamp)

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

$(TrigHLTJetHemisphereReclibname).$(shlibsuffix) :: $(bin)TrigHLTJetHemisphereRec.o $(bin)TrigHLTJetHemisphereRec_entries.o $(bin)TrigHLTJetHemisphereRec_load.o $(use_requirements) $(TrigHLTJetHemisphereRecstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)TrigHLTJetHemisphereRec.o $(bin)TrigHLTJetHemisphereRec_entries.o $(bin)TrigHLTJetHemisphereRec_load.o $(TrigHLTJetHemisphereRec_shlibflags)
	$(lib_silent) cat /dev/null >$(TrigHLTJetHemisphereRecstamp) && \
	  cat /dev/null >$(TrigHLTJetHemisphereRecshstamp)

$(TrigHLTJetHemisphereRecshstamp) :: $(TrigHLTJetHemisphereReclibname).$(shlibsuffix)
	$(lib_silent) if test -f $(TrigHLTJetHemisphereReclibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(TrigHLTJetHemisphereRecstamp) && \
	  cat /dev/null >$(TrigHLTJetHemisphereRecshstamp) ; fi

TrigHLTJetHemisphereRecclean ::
	$(cleanup_echo) objects TrigHLTJetHemisphereRec
	$(cleanup_silent) /bin/rm -f $(bin)TrigHLTJetHemisphereRec.o $(bin)TrigHLTJetHemisphereRec_entries.o $(bin)TrigHLTJetHemisphereRec_load.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)TrigHLTJetHemisphereRec.o $(bin)TrigHLTJetHemisphereRec_entries.o $(bin)TrigHLTJetHemisphereRec_load.o) $(patsubst %.o,%.dep,$(bin)TrigHLTJetHemisphereRec.o $(bin)TrigHLTJetHemisphereRec_entries.o $(bin)TrigHLTJetHemisphereRec_load.o) $(patsubst %.o,%.d.stamp,$(bin)TrigHLTJetHemisphereRec.o $(bin)TrigHLTJetHemisphereRec_entries.o $(bin)TrigHLTJetHemisphereRec_load.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf TrigHLTJetHemisphereRec_deps TrigHLTJetHemisphereRec_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
TrigHLTJetHemisphereRecinstallname = $(library_prefix)TrigHLTJetHemisphereRec$(library_suffix).$(shlibsuffix)

TrigHLTJetHemisphereRec :: TrigHLTJetHemisphereRecinstall ;

install :: TrigHLTJetHemisphereRecinstall ;

TrigHLTJetHemisphereRecinstall :: $(install_dir)/$(TrigHLTJetHemisphereRecinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(TrigHLTJetHemisphereRecinstallname) :: $(bin)$(TrigHLTJetHemisphereRecinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TrigHLTJetHemisphereRecinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##TrigHLTJetHemisphereRecclean :: TrigHLTJetHemisphereRecuninstall

uninstall :: TrigHLTJetHemisphereRecuninstall ;

TrigHLTJetHemisphereRecuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TrigHLTJetHemisphereRecinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigHLTJetHemisphereRecclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigHLTJetHemisphereRec.d

$(bin)$(binobj)TrigHLTJetHemisphereRec.d :

$(bin)$(binobj)TrigHLTJetHemisphereRec.o : $(cmt_final_setup_TrigHLTJetHemisphereRec)

$(bin)$(binobj)TrigHLTJetHemisphereRec.o : $(src)TrigHLTJetHemisphereRec.cxx
	$(cpp_echo) $(src)TrigHLTJetHemisphereRec.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(lib_TrigHLTJetHemisphereRec_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(use_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(lib_TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_cxx_cppflags)  $(src)TrigHLTJetHemisphereRec.cxx
endif
endif

else
$(bin)TrigHLTJetHemisphereRec_dependencies.make : $(TrigHLTJetHemisphereRec_cxx_dependencies)

$(bin)TrigHLTJetHemisphereRec_dependencies.make : $(src)TrigHLTJetHemisphereRec.cxx

$(bin)$(binobj)TrigHLTJetHemisphereRec.o : $(TrigHLTJetHemisphereRec_cxx_dependencies)
	$(cpp_echo) $(src)TrigHLTJetHemisphereRec.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(lib_TrigHLTJetHemisphereRec_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(use_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(lib_TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_cxx_cppflags)  $(src)TrigHLTJetHemisphereRec.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigHLTJetHemisphereRecclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigHLTJetHemisphereRec_entries.d

$(bin)$(binobj)TrigHLTJetHemisphereRec_entries.d :

$(bin)$(binobj)TrigHLTJetHemisphereRec_entries.o : $(cmt_final_setup_TrigHLTJetHemisphereRec)

$(bin)$(binobj)TrigHLTJetHemisphereRec_entries.o : $(src)components/TrigHLTJetHemisphereRec_entries.cxx
	$(cpp_echo) $(src)components/TrigHLTJetHemisphereRec_entries.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(lib_TrigHLTJetHemisphereRec_pp_cppflags) $(TrigHLTJetHemisphereRec_entries_pp_cppflags) $(use_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(lib_TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_entries_cppflags) $(TrigHLTJetHemisphereRec_entries_cxx_cppflags) -I../src/components $(src)components/TrigHLTJetHemisphereRec_entries.cxx
endif
endif

else
$(bin)TrigHLTJetHemisphereRec_dependencies.make : $(TrigHLTJetHemisphereRec_entries_cxx_dependencies)

$(bin)TrigHLTJetHemisphereRec_dependencies.make : $(src)components/TrigHLTJetHemisphereRec_entries.cxx

$(bin)$(binobj)TrigHLTJetHemisphereRec_entries.o : $(TrigHLTJetHemisphereRec_entries_cxx_dependencies)
	$(cpp_echo) $(src)components/TrigHLTJetHemisphereRec_entries.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(lib_TrigHLTJetHemisphereRec_pp_cppflags) $(TrigHLTJetHemisphereRec_entries_pp_cppflags) $(use_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(lib_TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_entries_cppflags) $(TrigHLTJetHemisphereRec_entries_cxx_cppflags) -I../src/components $(src)components/TrigHLTJetHemisphereRec_entries.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigHLTJetHemisphereRecclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigHLTJetHemisphereRec_load.d

$(bin)$(binobj)TrigHLTJetHemisphereRec_load.d :

$(bin)$(binobj)TrigHLTJetHemisphereRec_load.o : $(cmt_final_setup_TrigHLTJetHemisphereRec)

$(bin)$(binobj)TrigHLTJetHemisphereRec_load.o : $(src)components/TrigHLTJetHemisphereRec_load.cxx
	$(cpp_echo) $(src)components/TrigHLTJetHemisphereRec_load.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(lib_TrigHLTJetHemisphereRec_pp_cppflags) $(TrigHLTJetHemisphereRec_load_pp_cppflags) $(use_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(lib_TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_load_cppflags) $(TrigHLTJetHemisphereRec_load_cxx_cppflags) -I../src/components $(src)components/TrigHLTJetHemisphereRec_load.cxx
endif
endif

else
$(bin)TrigHLTJetHemisphereRec_dependencies.make : $(TrigHLTJetHemisphereRec_load_cxx_dependencies)

$(bin)TrigHLTJetHemisphereRec_dependencies.make : $(src)components/TrigHLTJetHemisphereRec_load.cxx

$(bin)$(binobj)TrigHLTJetHemisphereRec_load.o : $(TrigHLTJetHemisphereRec_load_cxx_dependencies)
	$(cpp_echo) $(src)components/TrigHLTJetHemisphereRec_load.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigHLTJetHemisphereRec_pp_cppflags) $(lib_TrigHLTJetHemisphereRec_pp_cppflags) $(TrigHLTJetHemisphereRec_load_pp_cppflags) $(use_cppflags) $(TrigHLTJetHemisphereRec_cppflags) $(lib_TrigHLTJetHemisphereRec_cppflags) $(TrigHLTJetHemisphereRec_load_cppflags) $(TrigHLTJetHemisphereRec_load_cxx_cppflags) -I../src/components $(src)components/TrigHLTJetHemisphereRec_load.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: TrigHLTJetHemisphereRecclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigHLTJetHemisphereRec.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigHLTJetHemisphereRecclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library TrigHLTJetHemisphereRec
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)TrigHLTJetHemisphereRec$(library_suffix).a $(library_prefix)TrigHLTJetHemisphereRec$(library_suffix).$(shlibsuffix) TrigHLTJetHemisphereRec.stamp TrigHLTJetHemisphereRec.shstamp
#-- end of cleanup_library ---------------
