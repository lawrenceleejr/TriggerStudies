# echo "setup TriggerMenu TriggerMenu-00-04-92 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtTriggerMenutempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtTriggerMenutempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=TriggerMenu -version=TriggerMenu-00-04-92 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenutempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt setup -csh -pack=TriggerMenu -version=TriggerMenu-00-04-92 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenutempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtTriggerMenutempfile}
  unset cmtTriggerMenutempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtTriggerMenutempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtTriggerMenutempfile}
unset cmtTriggerMenutempfile
exit $cmtsetupstatus

