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

# Utility rule file for pch_Generate_opencv_perf_photo.

# Include the progress variables for this target.
include modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/progress.make

modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo: modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_Release.gch

modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_Release.gch: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo/perf/perf_precomp.hpp
modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_Release.gch: modules/photo/perf_precomp.hpp
modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_Release.gch: lib/libopencv_perf_photo_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating perf_precomp.hpp.gch/opencv_perf_photo_Release.gch"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo && ../../cmake -E make_directory /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo/perf_precomp.hpp.gch
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++ -DNDEBUG -isystem"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/3rdparty/include/opencl/1.2" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo/src" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/imgproc/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/ts/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/imgcodecs/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/videoio/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/highgui/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo/test" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo/perf" -isystem"DIRINC-NOTFOUND" -D__OPENCV_BUILD=1 -mthumb -fdata-sections -Wa,--noexecstack -fsigned-char -Wno-psabi -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -x c++-header -o /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_Release.gch /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo/perf_precomp.hpp

modules/photo/perf_precomp.hpp: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo/perf/perf_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating perf_precomp.hpp"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo && ../../cmake -E copy /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo/perf/perf_precomp.hpp /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo/perf_precomp.hpp

pch_Generate_opencv_perf_photo: modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo
pch_Generate_opencv_perf_photo: modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_Release.gch
pch_Generate_opencv_perf_photo: modules/photo/perf_precomp.hpp
pch_Generate_opencv_perf_photo: modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/build.make
.PHONY : pch_Generate_opencv_perf_photo

# Rule to build all files generated by this target.
modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/build: pch_Generate_opencv_perf_photo
.PHONY : modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/build

modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/clean:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_perf_photo.dir/cmake_clean.cmake
.PHONY : modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/clean

modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/depend:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0 /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/photo /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/depend

