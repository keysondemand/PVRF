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
include apps/client_server/server/CMakeFiles/Server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/client_server/server/CMakeFiles/Server.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/client_server/server/CMakeFiles/Server.dir/progress.make

# Include the compile flags for this target's objects.
include apps/client_server/server/CMakeFiles/Server.dir/flags.make

apps/client_server/server/CMakeFiles/Server.dir/main.cpp.o: apps/client_server/server/CMakeFiles/Server.dir/flags.make
apps/client_server/server/CMakeFiles/Server.dir/main.cpp.o: /Users/easwarvivek/research-dvrf/apps/client_server/server/main.cpp
apps/client_server/server/CMakeFiles/Server.dir/main.cpp.o: apps/client_server/server/CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/client_server/server/CMakeFiles/Server.dir/main.cpp.o"
	cd /Users/easwarvivek/research-dvrf/build/apps/client_server/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/client_server/server/CMakeFiles/Server.dir/main.cpp.o -MF CMakeFiles/Server.dir/main.cpp.o.d -o CMakeFiles/Server.dir/main.cpp.o -c /Users/easwarvivek/research-dvrf/apps/client_server/server/main.cpp

apps/client_server/server/CMakeFiles/Server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Server.dir/main.cpp.i"
	cd /Users/easwarvivek/research-dvrf/build/apps/client_server/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/easwarvivek/research-dvrf/apps/client_server/server/main.cpp > CMakeFiles/Server.dir/main.cpp.i

apps/client_server/server/CMakeFiles/Server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Server.dir/main.cpp.s"
	cd /Users/easwarvivek/research-dvrf/build/apps/client_server/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/easwarvivek/research-dvrf/apps/client_server/server/main.cpp -o CMakeFiles/Server.dir/main.cpp.s

# Object files for target Server
Server_OBJECTS = \
"CMakeFiles/Server.dir/main.cpp.o"

# External object files for target Server
Server_EXTERNAL_OBJECTS =

apps/client_server/server/Server: apps/client_server/server/CMakeFiles/Server.dir/main.cpp.o
apps/client_server/server/Server: apps/client_server/server/CMakeFiles/Server.dir/build.make
apps/client_server/server/Server: lib/libconsensus.a
apps/client_server/server/Server: /usr/local/lib/libprotobuf.dylib
apps/client_server/server/Server: /usr/local/Cellar/libsodium/1.0.18_1/lib/libsodium.dylib
apps/client_server/server/Server: /usr/local/lib/libgmp.dylib
apps/client_server/server/Server: lib/libmcl.a
apps/client_server/server/Server: 3rd/noisec/libnoise_protocol.a
apps/client_server/server/Server: /opt/local/lib/libssl.dylib
apps/client_server/server/Server: /opt/local/lib/libcrypto.dylib
apps/client_server/server/Server: 3rd/relic/lib/librelic.dylib
apps/client_server/server/Server: lib/libproto.a
apps/client_server/server/Server: /usr/local/lib/libprotobuf.dylib
apps/client_server/server/Server: apps/client_server/server/CMakeFiles/Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/easwarvivek/research-dvrf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Server"
	cd /Users/easwarvivek/research-dvrf/build/apps/client_server/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/client_server/server/CMakeFiles/Server.dir/build: apps/client_server/server/Server
.PHONY : apps/client_server/server/CMakeFiles/Server.dir/build

apps/client_server/server/CMakeFiles/Server.dir/clean:
	cd /Users/easwarvivek/research-dvrf/build/apps/client_server/server && $(CMAKE_COMMAND) -P CMakeFiles/Server.dir/cmake_clean.cmake
.PHONY : apps/client_server/server/CMakeFiles/Server.dir/clean

apps/client_server/server/CMakeFiles/Server.dir/depend:
	cd /Users/easwarvivek/research-dvrf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/easwarvivek/research-dvrf /Users/easwarvivek/research-dvrf/apps/client_server/server /Users/easwarvivek/research-dvrf/build /Users/easwarvivek/research-dvrf/build/apps/client_server/server /Users/easwarvivek/research-dvrf/build/apps/client_server/server/CMakeFiles/Server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/client_server/server/CMakeFiles/Server.dir/depend

