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
include modules/hal/CMakeFiles/opencv_hal.dir/depend.make

# Include the progress variables for this target.
include modules/hal/CMakeFiles/opencv_hal.dir/progress.make

# Include the compile flags for this target's objects.
include modules/hal/CMakeFiles/opencv_hal.dir/flags.make

modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/arithm.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/arithm.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/arithm.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/arithm.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/arithm.cpp > CMakeFiles/opencv_hal.dir/src/arithm.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/arithm.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/arithm.cpp -o CMakeFiles/opencv_hal.dir/src/arithm.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o

modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/color.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/color.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/color.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/color.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/color.cpp > CMakeFiles/opencv_hal.dir/src/color.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/color.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/color.cpp -o CMakeFiles/opencv_hal.dir/src/color.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o

modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/filter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/filter.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/filter.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/filter.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/filter.cpp > CMakeFiles/opencv_hal.dir/src/filter.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/filter.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/filter.cpp -o CMakeFiles/opencv_hal.dir/src/filter.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o

modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/mathfuncs.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/mathfuncs.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/mathfuncs.cpp > CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/mathfuncs.cpp -o CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o

modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/matrix.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/matrix.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/matrix.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/matrix.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/matrix.cpp > CMakeFiles/opencv_hal.dir/src/matrix.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/matrix.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/matrix.cpp -o CMakeFiles/opencv_hal.dir/src/matrix.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o

modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/resize.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/resize.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/resize.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/resize.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/resize.cpp > CMakeFiles/opencv_hal.dir/src/resize.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/resize.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/resize.cpp -o CMakeFiles/opencv_hal.dir/src/resize.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o

modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/stat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/stat.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/stat.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/stat.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/stat.cpp > CMakeFiles/opencv_hal.dir/src/stat.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/stat.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/stat.cpp -o CMakeFiles/opencv_hal.dir/src/stat.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o

modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o: modules/hal/CMakeFiles/opencv_hal.dir/flags.make
modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o: /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/warp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -o CMakeFiles/opencv_hal.dir/src/warp.cpp.o -c /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/warp.cpp

modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_hal.dir/src/warp.cpp.i"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -E /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/warp.cpp > CMakeFiles/opencv_hal.dir/src/warp.cpp.i

modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_hal.dir/src/warp.cpp.s"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && /remote/Xilinx/14.6/EDK/gnu/arm/lin/bin/arm-xilinx-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS)  -include "/home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/precomp.hpp" -Winvalid-pch  -S /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal/src/warp.cpp -o CMakeFiles/opencv_hal.dir/src/warp.cpp.s

modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.requires:
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.requires

modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.provides: modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.requires
	$(MAKE) -f modules/hal/CMakeFiles/opencv_hal.dir/build.make modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.provides.build
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.provides

modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.provides.build: modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o

# Object files for target opencv_hal
opencv_hal_OBJECTS = \
"CMakeFiles/opencv_hal.dir/src/arithm.cpp.o" \
"CMakeFiles/opencv_hal.dir/src/color.cpp.o" \
"CMakeFiles/opencv_hal.dir/src/filter.cpp.o" \
"CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o" \
"CMakeFiles/opencv_hal.dir/src/matrix.cpp.o" \
"CMakeFiles/opencv_hal.dir/src/resize.cpp.o" \
"CMakeFiles/opencv_hal.dir/src/stat.cpp.o" \
"CMakeFiles/opencv_hal.dir/src/warp.cpp.o"

# External object files for target opencv_hal
opencv_hal_EXTERNAL_OBJECTS =

lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/build.make
lib/libopencv_hal.a: modules/hal/CMakeFiles/opencv_hal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../lib/libopencv_hal.a"
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && $(CMAKE_COMMAND) -P CMakeFiles/opencv_hal.dir/cmake_clean_target.cmake
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_hal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/hal/CMakeFiles/opencv_hal.dir/build: lib/libopencv_hal.a
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/build

modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/arithm.cpp.o.requires
modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/color.cpp.o.requires
modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/filter.cpp.o.requires
modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/mathfuncs.cpp.o.requires
modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/matrix.cpp.o.requires
modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/resize.cpp.o.requires
modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/stat.cpp.o.requires
modules/hal/CMakeFiles/opencv_hal.dir/requires: modules/hal/CMakeFiles/opencv_hal.dir/src/warp.cpp.o.requires
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/requires

modules/hal/CMakeFiles/opencv_hal.dir/clean:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal && $(CMAKE_COMMAND) -P CMakeFiles/opencv_hal.dir/cmake_clean.cmake
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/clean

modules/hal/CMakeFiles/opencv_hal.dir/depend:
	cd /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0 /home/zjshaver/cpre488/cpre488_final/opencv-3.0.0/modules/hal /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal /home/zjshaver/cpre488/cpre488_final/opencv_cmake_bin/modules/hal/CMakeFiles/opencv_hal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/hal/CMakeFiles/opencv_hal.dir/depend

