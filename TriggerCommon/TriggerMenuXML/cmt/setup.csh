# echo "setup TriggerMenuXML TriggerMenuXML-04-00-43 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtTriggerMenuXMLtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtTriggerMenuXMLtempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-43 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenuXMLtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt setup -csh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-43 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenuXMLtempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtTriggerMenuXMLtempfile}
  unset cmtTriggerMenuXMLtempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtTriggerMenuXMLtempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtTriggerMenuXMLtempfile}
unset cmtTriggerMenuXMLtempfile
exit $cmtsetupstatus

