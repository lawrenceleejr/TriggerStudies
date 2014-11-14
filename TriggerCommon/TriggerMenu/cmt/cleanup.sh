# echo "cleanup TriggerMenu TriggerMenu-00-04-55 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTriggerMenutempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtTriggerMenutempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TriggerMenu -version=TriggerMenu-00-04-55 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory $* >${cmtTriggerMenutempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TriggerMenu -version=TriggerMenu-00-04-55 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory $* >${cmtTriggerMenutempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtTriggerMenutempfile}
  unset cmtTriggerMenutempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtTriggerMenutempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtTriggerMenutempfile}
unset cmtTriggerMenutempfile
return $cmtcleanupstatus

