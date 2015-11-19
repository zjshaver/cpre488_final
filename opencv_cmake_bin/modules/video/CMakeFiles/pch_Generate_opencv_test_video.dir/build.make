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

# Utility rule file for pch_Generate_opencv_test_video.

# Include the progress variables for this target.
include modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/progress.make

modules/video/CMakeFiles/pch_Generate_opencv_test_video: modules/video/test_precomp.hpp.gch/opencv_test_video_Release.gch

modules/video/test_precomp.hpp.gch/opencv_test_video_Release.gch: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/video/test/test_precomp.hpp
modules/video/test_precomp.hpp.gch/opencv_test_video_Release.gch: modules/video/test_precomp.hpp
modules/video/test_precomp.hpp.gch/opencv_test_video_Release.gch: lib/libopencv_test_video_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp.gch/opencv_test_video_Release.gch"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video && ../../cmake -E make_directory /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video/test_precomp.hpp.gch
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++ -DNDEBUG -isystem"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/3rdparty/include/opencl/1.2" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/video/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/video/src" -isystem"/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/core/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/imgproc/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/ts/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/imgcodecs/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/videoio/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/highgui/include" -I"/home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/video/test" -isystem"DIRINC-NOTFOUND" -D__OPENCV_BUILD=1 -mthumb -fdata-sections -Wa,--noexecstack -fsigned-char -Wno-psabi -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -x c++-header -o /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video/test_precomp.hpp.gch/opencv_test_video_Release.gch /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video/test_precomp.hpp

modules/video/test_precomp.hpp: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/video/test/test_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video && ../../cmake -E copy /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/video/test/test_precomp.hpp /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video/test_precomp.hpp

pch_Generate_opencv_test_video: modules/video/CMakeFiles/pch_Generate_opencv_test_video
pch_Generate_opencv_test_video: modules/video/test_precomp.hpp.gch/opencv_test_video_Release.gch
pch_Generate_opencv_test_video: modules/video/test_precomp.hpp
pch_Generate_opencv_test_video: modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/build.make
.PHONY : pch_Generate_opencv_test_video

# Rule to build all files generated by this target.
modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/build: pch_Generate_opencv_test_video
.PHONY : modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/build

modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/clean:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_video.dir/cmake_clean.cmake
.PHONY : modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/clean

modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/depend:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0 /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/video /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/video/CMakeFiles/pch_Generate_opencv_test_video.dir/depend

