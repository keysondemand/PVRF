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
include lib/test/CMakeFiles/consensusTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/test/CMakeFiles/consensusTest.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/test/CMakeFiles/consensusTest.dir/progress.make

# Include the compile flags for this target's objects.
include lib/test/CMakeFiles/consensusTest.dir/flags.make

lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o: lib/test/CMakeFiles/consensusTest.dir/flags.make
lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o: /Users/easwarvivek/research-dvrf/lib/test/src/ddh_test.cpp
lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o: lib/test/CMakeFiles/consensusTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o -MF CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o.d -o CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o -c /Users/easwarvivek/research-dvrf/lib/test/src/ddh_test.cpp

lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consensusTest.dir/src/ddh_test.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/lib/test/src/ddh_test.cpp > CMakeFiles/consensusTest.dir/src/ddh_test.cpp.i

lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consensusTest.dir/src/ddh_test.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/lib/test/src/ddh_test.cpp -o CMakeFiles/consensusTest.dir/src/ddh_test.cpp.s

lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o: lib/test/CMakeFiles/consensusTest.dir/flags.make
lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o: /Users/easwarvivek/research-dvrf/lib/test/src/dfinity_test.cpp
lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o: lib/test/CMakeFiles/consensusTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o -MF CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o.d -o CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o -c /Users/easwarvivek/research-dvrf/lib/test/src/dfinity_test.cpp

lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/lib/test/src/dfinity_test.cpp > CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.i

lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/lib/test/src/dfinity_test.cpp -o CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.s

lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.o: lib/test/CMakeFiles/consensusTest.dir/flags.make
lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.o: /Users/easwarvivek/research-dvrf/lib/test/src/general_tests.cpp
lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.o: lib/test/CMakeFiles/consensusTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.o -MF CMakeFiles/consensusTest.dir/src/general_tests.cpp.o.d -o CMakeFiles/consensusTest.dir/src/general_tests.cpp.o -c /Users/easwarvivek/research-dvrf/lib/test/src/general_tests.cpp

lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consensusTest.dir/src/general_tests.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/lib/test/src/general_tests.cpp > CMakeFiles/consensusTest.dir/src/general_tests.cpp.i

lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consensusTest.dir/src/general_tests.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/lib/test/src/general_tests.cpp -o CMakeFiles/consensusTest.dir/src/general_tests.cpp.s

lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.o: lib/test/CMakeFiles/consensusTest.dir/flags.make
lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.o: /Users/easwarvivek/research-dvrf/lib/test/src/glow_test.cpp
lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.o: lib/test/CMakeFiles/consensusTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.o -MF CMakeFiles/consensusTest.dir/src/glow_test.cpp.o.d -o CMakeFiles/consensusTest.dir/src/glow_test.cpp.o -c /Users/easwarvivek/research-dvrf/lib/test/src/glow_test.cpp

lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consensusTest.dir/src/glow_test.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/lib/test/src/glow_test.cpp > CMakeFiles/consensusTest.dir/src/glow_test.cpp.i

lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consensusTest.dir/src/glow_test.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/lib/test/src/glow_test.cpp -o CMakeFiles/consensusTest.dir/src/glow_test.cpp.s

lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o: lib/test/CMakeFiles/consensusTest.dir/flags.make
lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o: /Users/easwarvivek/research-dvrf/lib/test/src/graph_tests.cpp
lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o: lib/test/CMakeFiles/consensusTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o -MF CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o.d -o CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o -c /Users/easwarvivek/research-dvrf/lib/test/src/graph_tests.cpp

lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consensusTest.dir/src/graph_tests.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/lib/test/src/graph_tests.cpp > CMakeFiles/consensusTest.dir/src/graph_tests.cpp.i

lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consensusTest.dir/src/graph_tests.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/lib/test/src/graph_tests.cpp -o CMakeFiles/consensusTest.dir/src/graph_tests.cpp.s

lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o: lib/test/CMakeFiles/consensusTest.dir/flags.make
lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o: /Users/easwarvivek/research-dvrf/lib/test/src/rbc_tests.cpp
lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o: lib/test/CMakeFiles/consensusTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o -MF CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o.d -o CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o -c /Users/easwarvivek/research-dvrf/lib/test/src/rbc_tests.cpp

lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/lib/test/src/rbc_tests.cpp > CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.i

lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/lib/test/src/rbc_tests.cpp -o CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.s

# Object files for target consensusTest
consensusTest_OBJECTS = \
"CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o" \
"CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o" \
"CMakeFiles/consensusTest.dir/src/general_tests.cpp.o" \
"CMakeFiles/consensusTest.dir/src/glow_test.cpp.o" \
"CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o" \
"CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o"

# External object files for target consensusTest
consensusTest_EXTERNAL_OBJECTS =

lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/src/ddh_test.cpp.o
lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/src/dfinity_test.cpp.o
lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/src/general_tests.cpp.o
lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/src/glow_test.cpp.o
lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/src/graph_tests.cpp.o
lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/src/rbc_tests.cpp.o
lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/build.make
lib/test/consensusTest: lib/libconsensus.a
lib/test/consensusTest: /usr/local/Cellar/libsodium/1.0.18_1/lib/libsodium.dylib
lib/test/consensusTest: /usr/local/lib/libgmp.dylib
lib/test/consensusTest: lib/libmcl.a
lib/test/consensusTest: 3rd/noisec/libnoise_protocol.a
lib/test/consensusTest: /opt/local/lib/libssl.dylib
lib/test/consensusTest: /opt/local/lib/libcrypto.dylib
lib/test/consensusTest: 3rd/relic/lib/librelic.dylib
lib/test/consensusTest: lib/libproto.a
lib/test/consensusTest: /usr/local/lib/libprotobuf.dylib
lib/test/consensusTest: lib/test/CMakeFiles/consensusTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable consensusTest"
	cd /Users/easwarvivek/research-dvrf/build/lib/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/consensusTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/test/CMakeFiles/consensusTest.dir/build: lib/test/consensusTest
.PHONY : lib/test/CMakeFiles/consensusTest.dir/build

lib/test/CMakeFiles/consensusTest.dir/clean:
	cd /Users/easwarvivek/research-dvrf/build/lib/test && $(CMAKE_COMMAND) -P CMakeFiles/consensusTest.dir/cmake_clean.cmake
.PHONY : lib/test/CMakeFiles/consensusTest.dir/clean

lib/test/CMakeFiles/consensusTest.dir/depend:
	cd /Users/easwarvivek/research-dvrf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/easwarvivek/research-dvrf /Users/easwarvivek/research-dvrf/lib/test /Users/easwarvivek/research-dvrf/build /Users/easwarvivek/research-dvrf/build/lib/test /Users/easwarvivek/research-dvrf/build/lib/test/CMakeFiles/consensusTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/test/CMakeFiles/consensusTest.dir/depend

