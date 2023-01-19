# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/easwarvivek/research-dvrf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/easwarvivek/research-dvrf/build

# Include any dependencies generated for this target.
include apps/random_beacon/CMakeFiles/RandomBeacon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/random_beacon/CMakeFiles/RandomBeacon.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/random_beacon/CMakeFiles/RandomBeacon.dir/progress.make

# Include the compile flags for this target's objects.
include apps/random_beacon/CMakeFiles/RandomBeacon.dir/flags.make

apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.o: apps/random_beacon/CMakeFiles/RandomBeacon.dir/flags.make
apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.o: /Users/easwarvivek/research-dvrf/apps/random_beacon/src/main.cpp
apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.o: apps/random_beacon/CMakeFiles/RandomBeacon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/apps/random_beacon && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.o -MF CMakeFiles/RandomBeacon.dir/src/main.cpp.o.d -o CMakeFiles/RandomBeacon.dir/src/main.cpp.o -c /Users/easwarvivek/research-dvrf/apps/random_beacon/src/main.cpp

apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RandomBeacon.dir/src/main.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/apps/random_beacon && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/apps/random_beacon/src/main.cpp > CMakeFiles/RandomBeacon.dir/src/main.cpp.i

apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RandomBeacon.dir/src/main.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/apps/random_beacon && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/apps/random_beacon/src/main.cpp -o CMakeFiles/RandomBeacon.dir/src/main.cpp.s

# Object files for target RandomBeacon
RandomBeacon_OBJECTS = \
"CMakeFiles/RandomBeacon.dir/src/main.cpp.o"

# External object files for target RandomBeacon
RandomBeacon_EXTERNAL_OBJECTS =

apps/random_beacon/RandomBeacon: apps/random_beacon/CMakeFiles/RandomBeacon.dir/src/main.cpp.o
apps/random_beacon/RandomBeacon: apps/random_beacon/CMakeFiles/RandomBeacon.dir/build.make
apps/random_beacon/RandomBeacon: lib/libconsensus.a
apps/random_beacon/RandomBeacon: /usr/local/Cellar/libsodium/1.0.18_1/lib/libsodium.dylib
apps/random_beacon/RandomBeacon: /usr/local/lib/libgmp.dylib
apps/random_beacon/RandomBeacon: lib/libmcl.a
apps/random_beacon/RandomBeacon: 3rd/noisec/libnoise_protocol.a
apps/random_beacon/RandomBeacon: /opt/local/lib/libssl.dylib
apps/random_beacon/RandomBeacon: /opt/local/lib/libcrypto.dylib
apps/random_beacon/RandomBeacon: 3rd/relic/lib/librelic.dylib
apps/random_beacon/RandomBeacon: lib/libproto.a
apps/random_beacon/RandomBeacon: /usr/local/lib/libprotobuf.dylib
apps/random_beacon/RandomBeacon: apps/random_beacon/CMakeFiles/RandomBeacon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RandomBeacon"
	cd /Users/easwarvivek/research-dvrf/build/apps/random_beacon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RandomBeacon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/random_beacon/CMakeFiles/RandomBeacon.dir/build: apps/random_beacon/RandomBeacon
.PHONY : apps/random_beacon/CMakeFiles/RandomBeacon.dir/build

apps/random_beacon/CMakeFiles/RandomBeacon.dir/clean:
	cd /Users/easwarvivek/research-dvrf/build/apps/random_beacon && $(CMAKE_COMMAND) -P CMakeFiles/RandomBeacon.dir/cmake_clean.cmake
.PHONY : apps/random_beacon/CMakeFiles/RandomBeacon.dir/clean

apps/random_beacon/CMakeFiles/RandomBeacon.dir/depend:
	cd /Users/easwarvivek/research-dvrf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/easwarvivek/research-dvrf /Users/easwarvivek/research-dvrf/apps/random_beacon /Users/easwarvivek/research-dvrf/build /Users/easwarvivek/research-dvrf/build/apps/random_beacon /Users/easwarvivek/research-dvrf/build/apps/random_beacon/CMakeFiles/RandomBeacon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/random_beacon/CMakeFiles/RandomBeacon.dir/depend
