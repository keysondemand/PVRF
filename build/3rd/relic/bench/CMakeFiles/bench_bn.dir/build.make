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
include 3rd/relic/bench/CMakeFiles/bench_bn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include 3rd/relic/bench/CMakeFiles/bench_bn.dir/compiler_depend.make

# Include the progress variables for this target.
include 3rd/relic/bench/CMakeFiles/bench_bn.dir/progress.make

# Include the compile flags for this target's objects.
include 3rd/relic/bench/CMakeFiles/bench_bn.dir/flags.make

3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.o: 3rd/relic/bench/CMakeFiles/bench_bn.dir/flags.make
3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.o: /Users/easwarvivek/research-dvrf/3rd/relic/bench/bench_bn.c
3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.o: 3rd/relic/bench/CMakeFiles/bench_bn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.o"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/bench && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.o -MF CMakeFiles/bench_bn.dir/bench_bn.c.o.d -o CMakeFiles/bench_bn.dir/bench_bn.c.o -c /Users/easwarvivek/research-dvrf/3rd/relic/bench/bench_bn.c

3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bench_bn.dir/bench_bn.c.i"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/bench && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/easwarvivek/research-dvrf/3rd/relic/bench/bench_bn.c > CMakeFiles/bench_bn.dir/bench_bn.c.i

3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bench_bn.dir/bench_bn.c.s"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/bench && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/easwarvivek/research-dvrf/3rd/relic/bench/bench_bn.c -o CMakeFiles/bench_bn.dir/bench_bn.c.s

# Object files for target bench_bn
bench_bn_OBJECTS = \
"CMakeFiles/bench_bn.dir/bench_bn.c.o"

# External object files for target bench_bn
bench_bn_EXTERNAL_OBJECTS =

3rd/relic/bin/bench_bn: 3rd/relic/bench/CMakeFiles/bench_bn.dir/bench_bn.c.o
3rd/relic/bin/bench_bn: 3rd/relic/bench/CMakeFiles/bench_bn.dir/build.make
3rd/relic/bin/bench_bn: 3rd/relic/lib/librelic_s.a
3rd/relic/bin/bench_bn: 3rd/relic/bench/CMakeFiles/bench_bn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/bench_bn"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/bench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench_bn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rd/relic/bench/CMakeFiles/bench_bn.dir/build: 3rd/relic/bin/bench_bn
.PHONY : 3rd/relic/bench/CMakeFiles/bench_bn.dir/build

3rd/relic/bench/CMakeFiles/bench_bn.dir/clean:
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/bench && $(CMAKE_COMMAND) -P CMakeFiles/bench_bn.dir/cmake_clean.cmake
.PHONY : 3rd/relic/bench/CMakeFiles/bench_bn.dir/clean

3rd/relic/bench/CMakeFiles/bench_bn.dir/depend:
	cd /Users/easwarvivek/research-dvrf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/easwarvivek/research-dvrf /Users/easwarvivek/research-dvrf/3rd/relic/bench /Users/easwarvivek/research-dvrf/build /Users/easwarvivek/research-dvrf/build/3rd/relic/bench /Users/easwarvivek/research-dvrf/build/3rd/relic/bench/CMakeFiles/bench_bn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rd/relic/bench/CMakeFiles/bench_bn.dir/depend

