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
include lib/CMakeFiles/proto.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/CMakeFiles/proto.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/proto.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/proto.dir/flags.make

lib/consensus.pb.h: /Users/easwarvivek/research-dvrf/lib/proto/consensus.proto
lib/consensus.pb.h: /usr/local/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running cpp protocol buffer compiler on proto/consensus.proto"
	cd /Users/easwarvivek/research-dvrf/build/lib && /usr/local/bin/protoc --cpp_out /Users/easwarvivek/research-dvrf/build/lib -I /Users/easwarvivek/research-dvrf/lib/proto /Users/easwarvivek/research-dvrf/lib/proto/consensus.proto

lib/consensus.pb.cc: lib/consensus.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate lib/consensus.pb.cc

lib/CMakeFiles/proto.dir/consensus.pb.cc.o: lib/CMakeFiles/proto.dir/flags.make
lib/CMakeFiles/proto.dir/consensus.pb.cc.o: lib/consensus.pb.cc
lib/CMakeFiles/proto.dir/consensus.pb.cc.o: lib/CMakeFiles/proto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/proto.dir/consensus.pb.cc.o"
	cd /Users/easwarvivek/research-dvrf/build/lib && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/proto.dir/consensus.pb.cc.o -MF CMakeFiles/proto.dir/consensus.pb.cc.o.d -o CMakeFiles/proto.dir/consensus.pb.cc.o -c /Users/easwarvivek/research-dvrf/build/lib/consensus.pb.cc

lib/CMakeFiles/proto.dir/consensus.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proto.dir/consensus.pb.cc.i"
	cd /Users/easwarvivek/research-dvrf/build/lib && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/build/lib/consensus.pb.cc > CMakeFiles/proto.dir/consensus.pb.cc.i

lib/CMakeFiles/proto.dir/consensus.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proto.dir/consensus.pb.cc.s"
	cd /Users/easwarvivek/research-dvrf/build/lib && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/build/lib/consensus.pb.cc -o CMakeFiles/proto.dir/consensus.pb.cc.s

# Object files for target proto
proto_OBJECTS = \
"CMakeFiles/proto.dir/consensus.pb.cc.o"

# External object files for target proto
proto_EXTERNAL_OBJECTS =

lib/libproto.a: lib/CMakeFiles/proto.dir/consensus.pb.cc.o
lib/libproto.a: lib/CMakeFiles/proto.dir/build.make
lib/libproto.a: lib/CMakeFiles/proto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libproto.a"
	cd /Users/easwarvivek/research-dvrf/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/proto.dir/cmake_clean_target.cmake
	cd /Users/easwarvivek/research-dvrf/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/proto.dir/build: lib/libproto.a
.PHONY : lib/CMakeFiles/proto.dir/build

lib/CMakeFiles/proto.dir/clean:
	cd /Users/easwarvivek/research-dvrf/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/proto.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/proto.dir/clean

lib/CMakeFiles/proto.dir/depend: lib/consensus.pb.cc
lib/CMakeFiles/proto.dir/depend: lib/consensus.pb.h
	cd /Users/easwarvivek/research-dvrf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/easwarvivek/research-dvrf /Users/easwarvivek/research-dvrf/lib /Users/easwarvivek/research-dvrf/build /Users/easwarvivek/research-dvrf/build/lib /Users/easwarvivek/research-dvrf/build/lib/CMakeFiles/proto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/proto.dir/depend

