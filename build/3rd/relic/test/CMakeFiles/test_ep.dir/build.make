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
include 3rd/relic/test/CMakeFiles/test_ep.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include 3rd/relic/test/CMakeFiles/test_ep.dir/compiler_depend.make

# Include the progress variables for this target.
include 3rd/relic/test/CMakeFiles/test_ep.dir/progress.make

# Include the compile flags for this target's objects.
include 3rd/relic/test/CMakeFiles/test_ep.dir/flags.make

3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.o: 3rd/relic/test/CMakeFiles/test_ep.dir/flags.make
3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.o: /Users/easwarvivek/research-dvrf/3rd/relic/test/test_ep.c
3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.o: 3rd/relic/test/CMakeFiles/test_ep.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.o"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.o -MF CMakeFiles/test_ep.dir/test_ep.c.o.d -o CMakeFiles/test_ep.dir/test_ep.c.o -c /Users/easwarvivek/research-dvrf/3rd/relic/test/test_ep.c

3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_ep.dir/test_ep.c.i"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/easwarvivek/research-dvrf/3rd/relic/test/test_ep.c > CMakeFiles/test_ep.dir/test_ep.c.i

3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_ep.dir/test_ep.c.s"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/easwarvivek/research-dvrf/3rd/relic/test/test_ep.c -o CMakeFiles/test_ep.dir/test_ep.c.s

# Object files for target test_ep
test_ep_OBJECTS = \
"CMakeFiles/test_ep.dir/test_ep.c.o"

# External object files for target test_ep
test_ep_EXTERNAL_OBJECTS =

3rd/relic/bin/test_ep: 3rd/relic/test/CMakeFiles/test_ep.dir/test_ep.c.o
3rd/relic/bin/test_ep: 3rd/relic/test/CMakeFiles/test_ep.dir/build.make
3rd/relic/bin/test_ep: 3rd/relic/lib/librelic_s.a
3rd/relic/bin/test_ep: 3rd/relic/test/CMakeFiles/test_ep.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/test_ep"
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_ep.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rd/relic/test/CMakeFiles/test_ep.dir/build: 3rd/relic/bin/test_ep
.PHONY : 3rd/relic/test/CMakeFiles/test_ep.dir/build

3rd/relic/test/CMakeFiles/test_ep.dir/clean:
	cd /Users/easwarvivek/research-dvrf/build/3rd/relic/test && $(CMAKE_COMMAND) -P CMakeFiles/test_ep.dir/cmake_clean.cmake
.PHONY : 3rd/relic/test/CMakeFiles/test_ep.dir/clean

3rd/relic/test/CMakeFiles/test_ep.dir/depend:
	cd /Users/easwarvivek/research-dvrf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/easwarvivek/research-dvrf /Users/easwarvivek/research-dvrf/3rd/relic/test /Users/easwarvivek/research-dvrf/build /Users/easwarvivek/research-dvrf/build/3rd/relic/test /Users/easwarvivek/research-dvrf/build/3rd/relic/test/CMakeFiles/test_ep.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rd/relic/test/CMakeFiles/test_ep.dir/depend

