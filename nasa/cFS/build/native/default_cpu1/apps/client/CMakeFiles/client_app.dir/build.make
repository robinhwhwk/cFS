# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/robin/src/sbn-instance-1/nasa/cFS/cfe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1

# Include any dependencies generated for this target.
include apps/client/CMakeFiles/client_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/client/CMakeFiles/client_app.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/client/CMakeFiles/client_app.dir/progress.make

# Include the compile flags for this target's objects.
include apps/client/CMakeFiles/client_app.dir/flags.make

apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.o: apps/client/CMakeFiles/client_app.dir/flags.make
apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.o: /home/robin/src/sbn-instance-1/nasa/cFS/apps/client/fsw/src/client_app.c
apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.o: apps/client/CMakeFiles/client_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.o"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.o -MF CMakeFiles/client_app.dir/fsw/src/client_app.c.o.d -o CMakeFiles/client_app.dir/fsw/src/client_app.c.o -c /home/robin/src/sbn-instance-1/nasa/cFS/apps/client/fsw/src/client_app.c

apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/client_app.dir/fsw/src/client_app.c.i"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/robin/src/sbn-instance-1/nasa/cFS/apps/client/fsw/src/client_app.c > CMakeFiles/client_app.dir/fsw/src/client_app.c.i

apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/client_app.dir/fsw/src/client_app.c.s"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/robin/src/sbn-instance-1/nasa/cFS/apps/client/fsw/src/client_app.c -o CMakeFiles/client_app.dir/fsw/src/client_app.c.s

# Object files for target client_app
client_app_OBJECTS = \
"CMakeFiles/client_app.dir/fsw/src/client_app.c.o"

# External object files for target client_app
client_app_EXTERNAL_OBJECTS =

apps/client/client_app.so: apps/client/CMakeFiles/client_app.dir/fsw/src/client_app.c.o
apps/client/client_app.so: apps/client/CMakeFiles/client_app.dir/build.make
apps/client/client_app.so: apps/client/CMakeFiles/client_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module client_app.so"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/client/CMakeFiles/client_app.dir/build: apps/client/client_app.so
.PHONY : apps/client/CMakeFiles/client_app.dir/build

apps/client/CMakeFiles/client_app.dir/clean:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/client && $(CMAKE_COMMAND) -P CMakeFiles/client_app.dir/cmake_clean.cmake
.PHONY : apps/client/CMakeFiles/client_app.dir/clean

apps/client/CMakeFiles/client_app.dir/depend:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robin/src/sbn-instance-1/nasa/cFS/cfe /home/robin/src/sbn-instance-1/nasa/cFS/apps/client /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1 /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/client /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/client/CMakeFiles/client_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/client/CMakeFiles/client_app.dir/depend

