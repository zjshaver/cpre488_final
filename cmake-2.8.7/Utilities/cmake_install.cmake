# Install script for directory: /home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Utilities

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man1" TYPE FILE FILES
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmakecommands.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmakecompat.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmakeprops.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmakepolicies.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmakevars.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmakemodules.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ctest.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cpack.1"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ccmake.1"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc/cmake-2.8" TYPE FILE FILES
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-policies.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-properties.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-variables.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-modules.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-commands.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-compatcommands.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ctest.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cpack.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ccmake.html"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake.docbook"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-policies.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-properties.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-variables.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-modules.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-commands.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cmake-compatcommands.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ctest.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ctest.docbook"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cpack.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/cpack.docbook"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ccmake.txt"
    "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Docs/ccmake.docbook"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Utilities/cmake.m4")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Utilities/Doxygen/cmake_install.cmake")
  INCLUDE("/home/zjshaver/cpre488/cpre488_final/cmake-2.8.7/Utilities/KWStyle/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

