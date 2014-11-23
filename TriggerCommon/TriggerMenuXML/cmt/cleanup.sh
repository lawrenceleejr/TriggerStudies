# echo "cleanup TriggerMenuXML TriggerMenuXML-04-00-43 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTriggerMenuXMLtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtTriggerMenuXMLtempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt cleanup -sh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-43 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory $* >${cmtTriggerMenuXMLtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt cleanup -sh -pack=TriggerMenuXML -version=TriggerMenuXML-04-00-43 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory $* >${cmtTriggerMenuXMLtempfile}"
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

