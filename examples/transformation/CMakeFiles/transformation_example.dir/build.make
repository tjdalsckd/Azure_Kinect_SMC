# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sung/Azure-Kinect-Sensor-SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sung/Azure-Kinect-Sensor-SDK

# Include any dependencies generated for this target.
include examples/transformation/CMakeFiles/transformation_example.dir/depend.make

# Include the progress variables for this target.
include examples/transformation/CMakeFiles/transformation_example.dir/progress.make

# Include the compile flags for this target's objects.
include examples/transformation/CMakeFiles/transformation_example.dir/flags.make

examples/transformation/CMakeFiles/transformation_example.dir/main.cpp.o: examples/transformation/CMakeFiles/transformation_example.dir/flags.make
examples/transformation/CMakeFiles/transformation_example.dir/main.cpp.o: examples/transformation/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sung/Azure-Kinect-Sensor-SDK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/transformation/CMakeFiles/transformation_example.dir/main.cpp.o"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/transformation_example.dir/main.cpp.o -c /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation/main.cpp

examples/transformation/CMakeFiles/transformation_example.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/transformation_example.dir/main.cpp.i"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation/main.cpp > CMakeFiles/transformation_example.dir/main.cpp.i

examples/transformation/CMakeFiles/transformation_example.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/transformation_example.dir/main.cpp.s"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation/main.cpp -o CMakeFiles/transformation_example.dir/main.cpp.s

examples/transformation/CMakeFiles/transformation_example.dir/transformation_helpers.cpp.o: examples/transformation/CMakeFiles/transformation_example.dir/flags.make
examples/transformation/CMakeFiles/transformation_example.dir/transformation_helpers.cpp.o: examples/transformation/transformation_helpers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sung/Azure-Kinect-Sensor-SDK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/transformation/CMakeFiles/transformation_example.dir/transformation_helpers.cpp.o"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/transformation_example.dir/transformation_helpers.cpp.o -c /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation/transformation_helpers.cpp

examples/transformation/CMakeFiles/transformation_example.dir/transformation_helpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/transformation_example.dir/transformation_helpers.cpp.i"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation/transformation_helpers.cpp > CMakeFiles/transformation_example.dir/transformation_helpers.cpp.i

examples/transformation/CMakeFiles/transformation_example.dir/transformation_helpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/transformation_example.dir/transformation_helpers.cpp.s"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation/transformation_helpers.cpp -o CMakeFiles/transformation_example.dir/transformation_helpers.cpp.s

# Object files for target transformation_example
transformation_example_OBJECTS = \
"CMakeFiles/transformation_example.dir/main.cpp.o" \
"CMakeFiles/transformation_example.dir/transformation_helpers.cpp.o"

# External object files for target transformation_example
transformation_example_EXTERNAL_OBJECTS =

bin/transformation_example: examples/transformation/CMakeFiles/transformation_example.dir/main.cpp.o
bin/transformation_example: examples/transformation/CMakeFiles/transformation_example.dir/transformation_helpers.cpp.o
bin/transformation_example: examples/transformation/CMakeFiles/transformation_example.dir/build.make
bin/transformation_example: bin/libk4a.so.1.3.0
bin/transformation_example: bin/libk4arecord.so.1.3.0
bin/transformation_example: extern/libjpeg-turbo/src/libturbojpeg.a
bin/transformation_example: examples/transformation/CMakeFiles/transformation_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sung/Azure-Kinect-Sensor-SDK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/transformation_example"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/transformation_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/transformation/CMakeFiles/transformation_example.dir/build: bin/transformation_example

.PHONY : examples/transformation/CMakeFiles/transformation_example.dir/build

examples/transformation/CMakeFiles/transformation_example.dir/clean:
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation && $(CMAKE_COMMAND) -P CMakeFiles/transformation_example.dir/cmake_clean.cmake
.PHONY : examples/transformation/CMakeFiles/transformation_example.dir/clean

examples/transformation/CMakeFiles/transformation_example.dir/depend:
	cd /home/sung/Azure-Kinect-Sensor-SDK && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sung/Azure-Kinect-Sensor-SDK /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation /home/sung/Azure-Kinect-Sensor-SDK /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation /home/sung/Azure-Kinect-Sensor-SDK/examples/transformation/CMakeFiles/transformation_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/transformation/CMakeFiles/transformation_example.dir/depend

