CMAKE_MINIMUM_REQUIRED(VERSION 2.1)

# Settings:
SET(CTEST_DASHBOARD_ROOT                "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Tests/CTestTest")
SET(CTEST_SITE                          "linux-4.ece.iastate.edu")
SET(CTEST_BUILD_NAME                    "CTestTest-Linux-g++-NoExe")

SET(CTEST_SOURCE_DIRECTORY              "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Tests/CTestTestFailure")
SET(CTEST_BINARY_DIRECTORY              "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Tests/CTestTestFailure")
SET(CTEST_CVS_COMMAND                   "/usr/bin/cvs")
SET(CTEST_CMAKE_GENERATOR               "Unix Makefiles")
SET(CTEST_BUILD_CONFIGURATION           "$ENV{CMAKE_CONFIG_TYPE}")
SET(CTEST_COVERAGE_COMMAND              "/usr/bin/gcov")
SET(CTEST_NOTES_FILES                   "${CTEST_SCRIPT_DIRECTORY}/${CTEST_SCRIPT_NAME}")

#CTEST_EMPTY_BINARY_DIRECTORY(${CTEST_BINARY_DIRECTORY})

CTEST_START(Experimental)
CTEST_TEST(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
