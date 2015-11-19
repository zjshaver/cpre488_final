# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/cmake

# The command to remove a file.
RM = /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin

# Utility rule file for pch_Generate_opencv_core.

# Include the progress variables for this target.
include modules/core/CMakeFiles/pch_Generate_opencv_core.dir/progress.make

modules/core/CMakeFiles/pch_Generate_opencv_core: modules/core/precomp.hpp.gch/opencv_core_Release.gch

modules/core/precomp.hpp.gch/opencv_core_Release.gch: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core/src/precomp.hpp
modules/core/precomp.hpp.gch/opencv_core_Release.gch: modules/core/precomp.hpp
modules/core/precomp.hpp.gch/opencv_core_Release.gch: lib/libopencv_core_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp.gch/opencv_core_Release.gch"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core && ../../cmake -E make_directory /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core/precomp.hpp.gch
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++ -DNDEBUG -fPIC -DCVAPI_EXPORTS -isystem"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/3rdparty/include/opencl/1.2" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core/src" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/include" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/3rdparty/zlib" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/3rdparty/zlib" -isystem"DIRINC-NOTFOUND" -D__OPENCV_BUILD=1 -mthumb -fdata-sections -Wa,--noexecstack -fsigned-char -Wno-psabi -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -DCVAPI_EXPORTS -x c++-header -o /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core/precomp.hpp.gch/opencv_core_Release.gch /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core/precomp.hpp

modules/core/precomp.hpp: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core/src/precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core && ../../cmake -E copy /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core/src/precomp.hpp /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core/precomp.hpp

pch_Generate_opencv_core: modules/core/CMakeFiles/pch_Generate_opencv_core
pch_Generate_opencv_core: modules/core/precomp.hpp.gch/opencv_core_Release.gch
pch_Generate_opencv_core: modules/core/precomp.hpp
pch_Generate_opencv_core: modules/core/CMakeFiles/pch_Generate_opencv_core.dir/build.make
.PHONY : pch_Generate_opencv_core

# Rule to build all files generated by this target.
modules/core/CMakeFiles/pch_Generate_opencv_core.dir/build: pch_Generate_opencv_core
.PHONY : modules/core/CMakeFiles/pch_Generate_opencv_core.dir/build

modules/core/CMakeFiles/pch_Generate_opencv_core.dir/clean:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_core.dir/cmake_clean.cmake
.PHONY : modules/core/CMakeFiles/pch_Generate_opencv_core.dir/clean

modules/core/CMakeFiles/pch_Generate_opencv_core.dir/depend:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0 /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/core/CMakeFiles/pch_Generate_opencv_core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/core/CMakeFiles/pch_Generate_opencv_core.dir/depend
