# echo "setup TriggerMenu TriggerMenu-00-04-92 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTriggerMenutempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtTriggerMenutempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=TriggerMenu -version=TriggerMenu-00-04-92 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenutempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=TriggerMenu -version=TriggerMenu-00-04-92 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TriggerCommon  -quiet -without_version_directory -no_cleanup $* >${cmtTriggerMenutempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtTriggerMenutempfile}
  unset cmtTriggerMenutempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtTriggerMenutempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtTriggerMenutempfile}
unset cmtTriggerMenutempfile
return $cmtsetupstatus

