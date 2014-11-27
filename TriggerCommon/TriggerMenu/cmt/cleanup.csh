# echo "cleanup TriggerMenu TriggerMenu-00-05-00 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25p20140131
endif
source ${CMTROOT}/mgr/setup.csh
set cmtTriggerMenutempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtTriggerMenutempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=TriggerMenu -version=TriggerMenu-00-05-00 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  $* >${cmtTriggerMenutempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=TriggerMenu -version=TriggerMenu-00-05-00 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  $* >${cmtTriggerMenutempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtTriggerMenutempfile}
  unset cmtTriggerMenutempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtTriggerMenutempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtTriggerMenutempfile}
unset cmtTriggerMenutempfile
exit $cmtcleanupstatus

