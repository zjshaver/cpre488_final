# CMake generated Testfile for 
# Source directory: /home/zjshaver/cpre488/cpre488_final/cmake-2.8.7
# Build directory: /home/zjshaver/cpre488/cpre488_final/cmake-2.8.7
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
INCLUDE("/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Tests/EnforceConfig.cmake")
ADD_TEST(SystemInformationNew "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/bin/cmake" "--system-information" "-G" "Unix Makefiles")
SUBDIRS(Utilities/KWIML)
SUBDIRS(Source/kwsys)
SUBDIRS(Utilities/cmzlib)
SUBDIRS(Utilities/cmcurl)
SUBDIRS(Utilities/cmcompress)
SUBDIRS(Utilities/cmbzip2)
SUBDIRS(Utilities/cmlibarchive)
SUBDIRS(Utilities/cmexpat)
SUBDIRS(Source/CursesDialog/form)
SUBDIRS(Source)
SUBDIRS(Utilities)
SUBDIRS(Tests)
