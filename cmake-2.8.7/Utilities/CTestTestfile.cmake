# CMake generated Testfile for 
# Source directory: /home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Utilities
# Build directory: /home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Utilities
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(CMake.HTML "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/bin/cmake" "-E" "chdir" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Utilities/xml" "/usr/bin/xmllint" "--valid" "--noout" "--nonet" "--path" "." "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-policies.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-properties.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-variables.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-modules.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-commands.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-compatcommands.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ctest.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cpack.html" "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ccmake.html")
SUBDIRS(Doxygen)
SUBDIRS(KWStyle)
