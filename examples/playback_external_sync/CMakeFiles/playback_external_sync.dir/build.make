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
include examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/depend.make

# Include the progress variables for this target.
include examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/progress.make

# Include the compile flags for this target's objects.
include examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/flags.make

examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/main.c.o: examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/flags.make
examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/main.c.o: examples/playback_external_sync/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sung/Azure-Kinect-Sensor-SDK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/main.c.o"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/playback_external_sync.dir/main.c.o   -c /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync/main.c

examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/playback_external_sync.dir/main.c.i"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync/main.c > CMakeFiles/playback_external_sync.dir/main.c.i

examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/playback_external_sync.dir/main.c.s"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync/main.c -o CMakeFiles/playback_external_sync.dir/main.c.s

# Object files for target playback_external_sync
playback_external_sync_OBJECTS = \
"CMakeFiles/playback_external_sync.dir/main.c.o"

# External object files for target playback_external_sync
playback_external_sync_EXTERNAL_OBJECTS =

bin/playback_external_sync: examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/main.c.o
bin/playback_external_sync: examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/build.make
bin/playback_external_sync: bin/libk4a.so.1.3.0
bin/playback_external_sync: bin/libk4arecord.so.1.3.0
bin/playback_external_sync: examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sung/Azure-Kinect-Sensor-SDK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../bin/playback_external_sync"
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/playback_external_sync.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/build: bin/playback_external_sync

.PHONY : examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/build

examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/clean:
	cd /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync && $(CMAKE_COMMAND) -P CMakeFiles/playback_external_sync.dir/cmake_clean.cmake
.PHONY : examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/clean

examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/depend:
	cd /home/sung/Azure-Kinect-Sensor-SDK && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sung/Azure-Kinect-Sensor-SDK /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync /home/sung/Azure-Kinect-Sensor-SDK /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync /home/sung/Azure-Kinect-Sensor-SDK/examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/playback_external_sync/CMakeFiles/playback_external_sync.dir/depend

