CMAKE_MINIMUM_REQUIRED(VERSION 2.1)

# Settings:
SET(CTEST_DASHBOARD_ROOT                "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Tests/CTestTest")
SET(CTEST_SITE                          "linux-4.ece.iastate.edu")
SET(CTEST_BUILD_NAME                    "CTestTest-Linux-g++-Upload")

SET(CTEST_SOURCE_DIRECTORY              "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Tests/CTestTestUpload")
SET(CTEST_BINARY_DIRECTORY              "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Tests/CTestTestUpload")
SET(CTEST_CMAKE_GENERATOR               "Unix Makefiles")
SET(CTEST_BUILD_CONFIGURATION           "$ENV{CMAKE_CONFIG_TYPE}")

CTEST_START(Experimental)
CTEST_CONFIGURE(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_BUILD(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_UPLOAD(FILES "${CTEST_SOURCE_DIRECTORY}/sleep.c" "${CTEST_BINARY_DIRECTORY}/CMakeCache.txt")
CTEST_SUBMIT()
