----------> uses
# use AtlasPolicy AtlasPolicy-*  (no_version_directory)
#   use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#     use PlatformPolicy PlatformPolicy-* External (no_version_directory)
#       use GaudiPolicy *  (no_version_directory)
#         use LCG_Settings *  (no_version_directory)
#         use Python * LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=2.7.3)
#           use LCG_Configuration v*  (no_version_directory)
#           use LCG_Settings v*  (no_version_directory)
#         use tcmalloc * LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=1.7p3)
#           use LCG_Configuration v*  (no_version_directory)
#           use LCG_Settings v*  (no_version_directory)
#           use libunwind v* LCG_Interfaces (no_version_directory) (native_version=5c2cade)
#             use LCG_Configuration v*  (no_version_directory)
#             use LCG_Settings v*  (no_version_directory)
#         use Reflex v* LCG_Interfaces (no_auto_imports) (no_version_directory)
#           use LCG_Configuration v*  (no_version_directory)
#           use LCG_Settings v*  (no_version_directory)
#           use ROOT v* LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=5.34.13)
#             use LCG_Configuration v*  (no_version_directory)
#             use LCG_Settings v*  (no_version_directory)
#             use GCCXML v* LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=0.9.0_20120309p2)
#               use LCG_Configuration v*  (no_version_directory)
#               use LCG_Settings v*  (no_version_directory)
#             use Python v* LCG_Interfaces (no_auto_imports) (no_version_directory) (native_version=2.7.3)
#             use xrootd v* LCG_Interfaces (no_version_directory) (native_version=3.2.7)
#               use LCG_Configuration v*  (no_version_directory)
#               use LCG_Settings v*  (no_version_directory)
#       use AtlasCommonPolicy AtlasCommonPolicy-*  (no_version_directory)
#         use LCG_Platforms *  (no_version_directory)
#         use AtlasDoxygen AtlasDoxygen-* Tools (no_version_directory) (native_version=)
#           use LCG_Settings *  (no_version_directory)
#           use LCG_Configuration *  (no_version_directory)
#             use LCG_Platforms *  (no_version_directory)
#     use Mac105_Compat Mac105_Compat-* External (no_version_directory) (native_version=1.0.0)
#       use AtlasExternalArea AtlasExternalArea-* External (no_version_directory)
#         use LCG_Settings v*  (no_version_directory)
#         use PlatformPolicy PlatformPolicy-* External (no_version_directory)
#       use PlatformPolicy PlatformPolicy-* External (no_version_directory)
#   use AtlasCxxPolicy AtlasCxxPolicy-*  (no_version_directory)
#     use GaudiPolicy v*  (no_auto_imports) (no_version_directory)
#     use ExternalPolicy ExternalPolicy-* External (no_version_directory)
#     use AtlasCompilers AtlasCompilers-* External (no_version_directory)
#       use LCG_Platforms *  (no_version_directory)
#   use AtlasCommonPolicy AtlasCommonPolicy-*  (no_version_directory)
#   use GaudiPolicy v*  (no_auto_imports) (no_version_directory)
#   use CodeCheck CodeCheck-* Tools (no_version_directory)
#   use AtlasDoxygen AtlasDoxygen-* Tools (no_version_directory) (native_version=)
#
# Selection :
use CMT v1r25p20140131 (/afs/cern.ch/sw/contrib)
use CodeCheck CodeCheck-01-02-03 Tools (/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5)
use LCG_Platforms LCG_Platforms-00-67-02-01  (/afs/cern.ch/atlas/software/builds/nightlies/devval/DetCommon/rel_5)
use AtlasCompilers AtlasCompilers-00-00-20 External (/afs/cern.ch/atlas/software/builds/nightlies/devval/DetCommon/rel_5)
use LCG_Configuration LCG_Configuration-00-67-02-01  (/afs/cern.ch/atlas/software/builds/nightlies/devval/DetCommon/rel_5)
use LCG_Settings v1  (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b)
use AtlasDoxygen AtlasDoxygen-00-04-05 Tools (/afs/cern.ch/atlas/software/builds/nightlies/devval/DetCommon/rel_5)
use AtlasCommonPolicy AtlasCommonPolicy-00-00-49  (/afs/cern.ch/atlas/software/builds/nightlies/devval/DetCommon/rel_5)
use xrootd v1 LCG_Interfaces (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b) (no_auto_imports)
use GCCXML v1 LCG_Interfaces (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b) (no_auto_imports)
use libunwind v1 LCG_Interfaces (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b) (no_auto_imports)
use tcmalloc v1 LCG_Interfaces (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b) (no_auto_imports)
use Python v1 LCG_Interfaces (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b) (no_auto_imports)
use ROOT v1 LCG_Interfaces (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b) (no_auto_imports)
use Reflex v1 LCG_Interfaces (/afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b) (no_auto_imports)
use GaudiPolicy GaudiPolicy-15-00-01  (/afs/cern.ch/atlas/software/builds/nightlies/devval/GAUDI/rel_5)
use PlatformPolicy PlatformPolicy-00-00-18 External (/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5)
use AtlasExternalArea AtlasExternalArea-00-00-25 External (/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5)
use Mac105_Compat Mac105_Compat-00-00-01 External (/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5)
use ExternalPolicy ExternalPolicy-00-01-69 External (/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5)
use AtlasCxxPolicy AtlasCxxPolicy-00-00-69  (/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5)
use AtlasPolicy AtlasPolicy-01-08-16-01  (/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5)
----------> tags
x86_64-slc6-gcc47-opt (from CMTCONFIG) package [LCG_Platforms PlatformPolicy] implies [target-x86_64 target-slc6 target-gcc47 target-opt Linux slc6 64 gcc-4.7 opt x86_64-slc6-gcc47]
ATLAS (from arguments) package [GaudiPolicy] implies [use-shared-dir no-pyzip] applied [ExternalPolicy]
CMTv1 (from CMTVERSION)
CMTr25 (from CMTVERSION)
CMTp20140131 (from CMTVERSION)
Linux (from uname) package [CMT LCG_Platforms AtlasCxxPolicy AtlasPolicy] implies [Unix host-linux cpp_native_dependencies]
CERN (from CMTSITE)
leejr_no_config (from PROJECT) excludes [leejr_config]
leejr_no_root (from PROJECT) excludes [leejr_root]
leejr_cleanup (from PROJECT) excludes [leejr_no_cleanup]
leejr_scripts (from PROJECT) excludes [leejr_no_scripts]
leejr_no_prototypes (from PROJECT) excludes [leejr_prototypes]
leejr_with_installarea (from PROJECT) excludes [leejr_without_installarea]
leejr_without_version_directory (from PROJECT) excludes [leejr_with_version_directory]
leejr (from PROJECT)
AtlasHLT_no_config (from PROJECT) excludes [AtlasHLT_config]
AtlasHLT_no_root (from PROJECT) excludes [AtlasHLT_root]
AtlasHLT_cleanup (from PROJECT) excludes [AtlasHLT_no_cleanup]
AtlasHLT_scripts (from PROJECT) excludes [AtlasHLT_no_scripts]
AtlasHLT_no_prototypes (from PROJECT) excludes [AtlasHLT_prototypes]
AtlasHLT_with_installarea (from PROJECT) excludes [AtlasHLT_without_installarea]
AtlasHLT_without_version_directory (from PROJECT) excludes [AtlasHLT_with_version_directory]
AtlasTrigger_no_config (from PROJECT) excludes [AtlasTrigger_config]
AtlasTrigger_no_root (from PROJECT) excludes [AtlasTrigger_root]
AtlasTrigger_cleanup (from PROJECT) excludes [AtlasTrigger_no_cleanup]
AtlasTrigger_scripts (from PROJECT) excludes [AtlasTrigger_no_scripts]
AtlasTrigger_no_prototypes (from PROJECT) excludes [AtlasTrigger_prototypes]
AtlasTrigger_with_installarea (from PROJECT) excludes [AtlasTrigger_without_installarea]
AtlasTrigger_without_version_directory (from PROJECT) excludes [AtlasTrigger_with_version_directory]
AtlasReconstruction_no_config (from PROJECT) excludes [AtlasReconstruction_config]
AtlasReconstruction_no_root (from PROJECT) excludes [AtlasReconstruction_root]
AtlasReconstruction_cleanup (from PROJECT) excludes [AtlasReconstruction_no_cleanup]
AtlasReconstruction_scripts (from PROJECT) excludes [AtlasReconstruction_no_scripts]
AtlasReconstruction_no_prototypes (from PROJECT) excludes [AtlasReconstruction_prototypes]
AtlasReconstruction_with_installarea (from PROJECT) excludes [AtlasReconstruction_without_installarea]
AtlasReconstruction_without_version_directory (from PROJECT) excludes [AtlasReconstruction_with_version_directory]
AtlasEvent_no_config (from PROJECT) excludes [AtlasEvent_config]
AtlasEvent_no_root (from PROJECT) excludes [AtlasEvent_root]
AtlasEvent_cleanup (from PROJECT) excludes [AtlasEvent_no_cleanup]
AtlasEvent_scripts (from PROJECT) excludes [AtlasEvent_no_scripts]
AtlasEvent_no_prototypes (from PROJECT) excludes [AtlasEvent_prototypes]
AtlasEvent_with_installarea (from PROJECT) excludes [AtlasEvent_without_installarea]
AtlasEvent_without_version_directory (from PROJECT) excludes [AtlasEvent_with_version_directory]
AtlasConditions_no_config (from PROJECT) excludes [AtlasConditions_config]
AtlasConditions_no_root (from PROJECT) excludes [AtlasConditions_root]
AtlasConditions_cleanup (from PROJECT) excludes [AtlasConditions_no_cleanup]
AtlasConditions_scripts (from PROJECT) excludes [AtlasConditions_no_scripts]
AtlasConditions_no_prototypes (from PROJECT) excludes [AtlasConditions_prototypes]
AtlasConditions_with_installarea (from PROJECT) excludes [AtlasConditions_without_installarea]
AtlasConditions_without_version_directory (from PROJECT) excludes [AtlasConditions_with_version_directory]
AtlasCore_no_config (from PROJECT) excludes [AtlasCore_config]
AtlasCore_no_root (from PROJECT) excludes [AtlasCore_root]
AtlasCore_cleanup (from PROJECT) excludes [AtlasCore_no_cleanup]
AtlasCore_scripts (from PROJECT) excludes [AtlasCore_no_scripts]
AtlasCore_no_prototypes (from PROJECT) excludes [AtlasCore_prototypes]
AtlasCore_with_installarea (from PROJECT) excludes [AtlasCore_without_installarea]
AtlasCore_without_version_directory (from PROJECT) excludes [AtlasCore_with_version_directory]
DetCommon_no_config (from PROJECT) excludes [DetCommon_config]
DetCommon_no_root (from PROJECT) excludes [DetCommon_root]
DetCommon_cleanup (from PROJECT) excludes [DetCommon_no_cleanup]
DetCommon_scripts (from PROJECT) excludes [DetCommon_no_scripts]
DetCommon_prototypes (from PROJECT) excludes [DetCommon_no_prototypes]
DetCommon_with_installarea (from PROJECT) excludes [DetCommon_without_installarea]
DetCommon_without_version_directory (from PROJECT) excludes [DetCommon_with_version_directory]
tdaq-common_no_config (from PROJECT) excludes [tdaq-common_config]
tdaq-common_no_root (from PROJECT) excludes [tdaq-common_root]
tdaq-common_cleanup (from PROJECT) excludes [tdaq-common_no_cleanup]
tdaq-common_scripts (from PROJECT) excludes [tdaq-common_no_scripts]
tdaq-common_prototypes (from PROJECT) excludes [tdaq-common_no_prototypes]
tdaq-common_without_installarea (from PROJECT) excludes [tdaq-common_with_installarea]
tdaq-common_without_version_directory (from PROJECT) excludes [tdaq-common_with_version_directory]
LCGCMT_no_config (from PROJECT) excludes [LCGCMT_config]
LCGCMT_no_root (from PROJECT) excludes [LCGCMT_root]
LCGCMT_cleanup (from PROJECT) excludes [LCGCMT_no_cleanup]
LCGCMT_scripts (from PROJECT) excludes [LCGCMT_no_scripts]
LCGCMT_prototypes (from PROJECT) excludes [LCGCMT_no_prototypes]
LCGCMT_with_installarea (from PROJECT) excludes [LCGCMT_without_installarea]
LCGCMT_without_version_directory (from PROJECT) excludes [LCGCMT_with_version_directory]
GAUDI_no_config (from PROJECT) excludes [GAUDI_config]
GAUDI_root (from PROJECT) excludes [GAUDI_no_root]
GAUDI_cleanup (from PROJECT) excludes [GAUDI_no_cleanup]
GAUDI_scripts (from PROJECT) excludes [GAUDI_no_scripts]
GAUDI_prototypes (from PROJECT) excludes [GAUDI_no_prototypes]
GAUDI_with_installarea (from PROJECT) excludes [GAUDI_without_installarea]
GAUDI_without_version_directory (from PROJECT) excludes [GAUDI_with_version_directory]
dqm-common_no_config (from PROJECT) excludes [dqm-common_config]
dqm-common_no_root (from PROJECT) excludes [dqm-common_root]
dqm-common_cleanup (from PROJECT) excludes [dqm-common_no_cleanup]
dqm-common_scripts (from PROJECT) excludes [dqm-common_no_scripts]
dqm-common_prototypes (from PROJECT) excludes [dqm-common_no_prototypes]
dqm-common_without_installarea (from PROJECT) excludes [dqm-common_with_installarea]
dqm-common_without_version_directory (from PROJECT) excludes [dqm-common_with_version_directory]
tdaq_no_config (from PROJECT) excludes [tdaq_config]
tdaq_no_root (from PROJECT) excludes [tdaq_root]
tdaq_cleanup (from PROJECT) excludes [tdaq_no_cleanup]
tdaq_scripts (from PROJECT) excludes [tdaq_no_scripts]
tdaq_prototypes (from PROJECT) excludes [tdaq_no_prototypes]
tdaq_without_installarea (from PROJECT) excludes [tdaq_with_installarea]
tdaq_without_version_directory (from PROJECT) excludes [tdaq_with_version_directory]
x86_64 (from package CMT) package [LCG_Platforms] implies [host-x86_64] applied [CMT]
slc66 (from package CMT) package [PlatformPolicy] implies [host-slc6] applied [CMT]
gcc472 (from package CMT) package [LCG_Platforms] implies [host-gcc47] applied [CMT]
Unix (from package CMT) package [LCG_Platforms] implies [host-unix] excludes [WIN32 Win32]
c_native_dependencies (from package CMT) activated GaudiPolicy
cpp_native_dependencies (from package CMT) activated GaudiPolicy
/afs/cern.ch/atlas/software/builds/nightlies/devval:/afs/cern.ch/atlas/software/builds:/afs/cern.ch/atlas/software/ASG/builds:/afs/cern.ch/atlas/project/tdaq/prod:/afs/cern.ch/atlas/offline/externalnotProject (from package ExternalPolicy) applied [ExternalPolicy]
target-unix (from package LCG_Settings) activated LCG_Platforms
target-x86_64 (from package LCG_Settings) activated LCG_Platforms
target-gcc47 (from package LCG_Settings) package [LCG_Platforms] implies [target-gcc4 target-lcg-compiler lcg-compiler target-c11] activated LCG_Platforms
host-x86_64 (from package LCG_Settings) activated LCG_Platforms
target-slc (from package LCG_Settings) package [LCG_Platforms] implies [target-linux] activated LCG_Platforms
target-gcc (from package LCG_Settings) activated LCG_Platforms
target-gcc4 (from package LCG_Settings) package [LCG_Platforms] implies [target-gcc] activated LCG_Platforms
target-lcg-compiler (from package LCG_Settings) activated LCG_Platforms
host-gcc4 (from package LCG_Platforms) package [LCG_Platforms] implies [host-gcc]
host-gcc47 (from package LCG_Platforms) package [LCG_Platforms] implies [host-gcc4]
host-gcc (from package LCG_Platforms)
host-linux (from package LCG_Platforms) package [LCG_Platforms] implies [host-unix]
host-unix (from package LCG_Platforms)
host-slc6 (from package LCG_Platforms) package [LCG_Platforms] implies [host-slc] activated PlatformPolicy
host-slc (from package LCG_Platforms) package [LCG_Platforms] implies [host-linux] activated PlatformPolicy
target-opt (from package LCG_Platforms)
target-slc6 (from package LCG_Platforms) package [LCG_Platforms] implies [target-slc]
target-linux (from package LCG_Platforms) package [LCG_Platforms] implies [target-unix]
lcg-compiler (from package LCG_Platforms)
target-c11 (from package LCG_Platforms)
ROOT_GE_5_15 (from package LCG_Configuration) applied [LCG_Configuration]
ROOT_GE_5_19 (from package LCG_Configuration) applied [LCG_Configuration]
use-shared-dir (from package GaudiPolicy)
do_genconf (from package GaudiPolicy) applied [AtlasPolicy] activated AtlasPolicy
no-pyzip (from package GaudiPolicy)
separate-debug (from package AtlasCommonPolicy) excludes [no-separate-debug] applied [AtlasCommonPolicy]
NICOS (from package AtlasCommonPolicy) package AtlasCommonPolicy excludes [NICOSrel_nightly] applied [AtlasCommonPolicy]
LCGCMT_INSTALLED (from package PlatformPolicy) applied [PlatformPolicy ExternalPolicy]
block-tdaqc (from package PlatformPolicy) applied [PlatformPolicy ExternalPolicy]
opt (from package PlatformPolicy) package [AtlasPolicy] implies [optimized]
gcc (from package PlatformPolicy)
64 (from package PlatformPolicy) package [PlatformPolicy] implies [target-64]
gcc-4.7 (from package PlatformPolicy) package [PlatformPolicy] implies [gcc47x gcc47 gcc]
gcc47x (from package PlatformPolicy)
gcc47 (from package PlatformPolicy)
slc6 (from package PlatformPolicy)
x86_64-slc6-gcc47 (from package PlatformPolicy)
target-64 (from package PlatformPolicy)
asNeeded (from package PlatformPolicy) applied [PlatformPolicy]
optimized (from package AtlasPolicy) package [AtlasPolicy] implies [opt]
HasAthenaRunTime (from package AtlasPolicy) applied [AtlasPolicy]
----------> CMTPATH
# Add path /afs/cern.ch/work/l/leejr/NightlyTest from initialization
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasHLT/rel_5 from initialization
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasTrigger/rel_5 from ProjectPath
# Add path /afs/cern.ch/atlas/project/tdaq/prod/tdaq/tdaq-05-04-00 from ProjectPath
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasReconstruction/rel_5 from ProjectPath
# Add path /afs/cern.ch/atlas/project/tdaq/prod/dqm-common/dqm-common-00-26-02 from ProjectPath
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasEvent/rel_5 from ProjectPath
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasConditions/rel_5 from ProjectPath
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5 from ProjectPath
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/DetCommon/rel_5 from ProjectPath
# Add path /afs/cern.ch/atlas/project/tdaq/prod/tdaq-common/tdaq-common-01-28-00 from ProjectPath
# Add path /afs/cern.ch/atlas/software/builds/nightlies/devval/GAUDI/rel_5 from ProjectPath
# Add path /afs/cern.ch/atlas/offline/external/LCGCMT/LCGCMT_67b from ProjectPath
