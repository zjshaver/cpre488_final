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
include modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/depend.make

# Include the progress variables for this target.
include modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/progress.make

# Include the compile flags for this target's objects.
include modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/opencl/test_hogdetector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/opencl/test_hogdetector.cpp

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/opencl/test_hogdetector.cpp > CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.i

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/opencl/test_hogdetector.cpp -o CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.s

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.requires:
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.requires

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.provides: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.requires
	$(MAKE) -f modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build.make modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.provides.build
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.provides

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.provides.build: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_cascadeandhog.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_cascadeandhog.cpp

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_cascadeandhog.cpp > CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.i

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_cascadeandhog.cpp -o CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.s

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.requires:
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.requires

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.provides: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.requires
	$(MAKE) -f modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build.make modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.provides.build
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.provides

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.provides.build: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_main.cpp

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_main.cpp > CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.i

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/test_precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect/test/test_main.cpp -o CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.s

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.requires:
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.requires

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.provides: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build.make modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.provides

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.provides.build: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o

# Object files for target opencv_test_objdetect
opencv_test_objdetect_OBJECTS = \
"CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o" \
"CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o" \
"CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o"

# External object files for target opencv_test_objdetect
opencv_test_objdetect_EXTERNAL_OBJECTS =

bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o
bin/opencv_test_objdetect: lib/libopencv_ts.a
bin/opencv_test_objdetect: lib/libopencv_objdetect.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_hal.a
bin/opencv_test_objdetect: lib/libopencv_core.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_ml.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_highgui.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_hal.a
bin/opencv_test_objdetect: lib/libopencv_core.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_highgui.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_hal.a
bin/opencv_test_objdetect: lib/libopencv_core.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_ml.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_highgui.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_videoio.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgcodecs.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_imgproc.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_core.so.3.0.0
bin/opencv_test_objdetect: lib/libopencv_hal.a
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build.make
bin/opencv_test_objdetect: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/opencv_test_objdetect"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_objdetect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build: bin/opencv_test_objdetect
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/build

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/requires: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/opencl/test_hogdetector.cpp.o.requires
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/requires: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_cascadeandhog.cpp.o.requires
modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/requires: modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/test/test_main.cpp.o.requires
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/requires

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/clean:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_objdetect.dir/cmake_clean.cmake
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/clean

modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/depend:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0 /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/objdetect /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/objdetect/CMakeFiles/opencv_test_objdetect.dir/depend
