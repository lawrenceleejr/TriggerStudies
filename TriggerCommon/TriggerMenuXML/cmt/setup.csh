# echo "setup TriggerMenuXML TriggerMenuXML-04-00-42 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25p20140131
endif
source ${CMTROOT}/mgr/setup.csh
set cmtTriggerMenuXMLtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtTriggerMenuXMLtempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-42 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenuXMLtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-42 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenuXMLtempfile}"
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

