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

# Include any dependencies generated for this target.
include modules/superres/CMakeFiles/opencv_test_superres.dir/depend.make

# Include the progress variables for this target.
include modules/superres/CMakeFiles/opencv_test_superres.dir/progress.make

# Include the compile flags for this target's objects.
include modules/superres/CMakeFiles/opencv_test_superres.dir/flags.make

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o: modules/superres/CMakeFiles/opencv_test_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres/test_precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_main.cpp

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres/test_precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_main.cpp > CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.i

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres/test_precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_main.cpp -o CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.s

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.requires

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.provides: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_test_superres.dir/build.make modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.provides

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o: modules/superres/CMakeFiles/opencv_test_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_superres.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres/test_precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_superres.cpp

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres/test_precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_superres.cpp > CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.i

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres/test_precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres/test/test_superres.cpp -o CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.s

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.requires

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.provides: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_test_superres.dir/build.make modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.provides

modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o

# Object files for target opencv_test_superres
opencv_test_superres_OBJECTS = \
"CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o"

# External object files for target opencv_test_superres
opencv_test_superres_EXTERNAL_OBJECTS =

bin/opencv_test_superres: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o
bin/opencv_test_superres: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o
bin/opencv_test_superres: lib/libopencv_ts.a
bin/opencv_test_superres: lib/libopencv_superres.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_superres: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_superres: lib/libopencv_hal.a
bin/opencv_test_superres: lib/libopencv_core.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_superres: lib/libopencv_video.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_superres: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_superres: lib/libopencv_hal.a
bin/opencv_test_superres: lib/libopencv_core.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_superres: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_superres: lib/libopencv_highgui.so.3.0.0
bin/opencv_test_superres: lib/libopencv_hal.a
bin/opencv_test_superres: lib/libopencv_core.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_superres: lib/libopencv_video.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_superres: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_superres: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_superres: lib/libopencv_core.so.3.0.0
bin/opencv_test_superres: lib/libopencv_hal.a
bin/opencv_test_superres: modules/superres/CMakeFiles/opencv_test_superres.dir/build.make
bin/opencv_test_superres: modules/superres/CMakeFiles/opencv_test_superres.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/opencv_test_superres"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_superres.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/superres/CMakeFiles/opencv_test_superres.dir/build: bin/opencv_test_superres
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/build

modules/superres/CMakeFiles/opencv_test_superres.dir/requires: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_main.cpp.o.requires
modules/superres/CMakeFiles/opencv_test_superres.dir/requires: modules/superres/CMakeFiles/opencv_test_superres.dir/test/test_superres.cpp.o.requires
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/requires

modules/superres/CMakeFiles/opencv_test_superres.dir/clean:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_superres.dir/cmake_clean.cmake
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/clean

modules/superres/CMakeFiles/opencv_test_superres.dir/depend:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0 /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/superres /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/superres/CMakeFiles/opencv_test_superres.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/superres/CMakeFiles/opencv_test_superres.dir/depend

