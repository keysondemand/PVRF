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

# Utility rule file for arith_objs.

# Include any custom commands dependencies for this target.
include 3rd/relic/src/CMakeFiles/arith_objs.dir/compiler_depend.make

# Include the progress variables for this target.
include 3rd/relic/src/CMakeFiles/arith_objs.dir/progress.make

arith_objs: 3rd/relic/src/CMakeFiles/arith_objs.dir/build.make
.PHONY : arith_objs

# Rule to build all files generated by this target.
3rd/relic/src/CMakeFiles/arith_objs.dir/build: arith_objs
.PHONY : 3rd/relic/src/CMakeFiles/arith_objs.dir/build

3rd/relic/src/CMakeFiles/arith_objs.dir/clean:
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/src && $(CMAKE_COMMAND) -P CMakeFiles/arith_objs.dir/cmake_clean.cmake
.PHONY : 3rd/relic/src/CMakeFiles/arith_objs.dir/clean

3rd/relic/src/CMakeFiles/arith_objs.dir/depend:
	cd /Users/easwarvivek/research-dvrf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/easwarvivek/research-dvrf /Users/easwarvivek/research-dvrf/3rd/relic/src /Users/easwarvivek/research-dvrf/build /Users/easwarvivek/research-dvrf/build/3rd/relic/src /Users/easwarvivek/research-dvrf/build/3rd/relic/src/CMakeFiles/arith_objs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rd/relic/src/CMakeFiles/arith_objs.dir/depend

