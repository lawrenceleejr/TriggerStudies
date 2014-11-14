# echo "cleanup TriggerMenuXML TriggerMenuXML-04-00-42 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTriggerMenuXMLtempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtTriggerMenuXMLtempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-42 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory $* >${cmtTriggerMenuXMLtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-42 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory $* >${cmtTriggerMenuXMLtempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtTriggerMenuXMLtempfile}
  unset cmtTriggerMenuXMLtempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtTriggerMenuXMLtempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtTriggerMenuXMLtempfile}
unset cmtTriggerMenuXMLtempfile
return $cmtcleanupstatus

