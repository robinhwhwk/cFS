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
include apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/progress.make

# Include the compile flags for this target's objects.
include apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/flags.make

apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o: apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/flags.make
apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o: /home/robin/src/sbn-instance-1/nasa/cFS/apps/sbn_f_remap/fsw/src/sbn_f_remap.c
apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o: apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn_f_remap && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o -MF CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o.d -o CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o -c /home/robin/src/sbn-instance-1/nasa/cFS/apps/sbn_f_remap/fsw/src/sbn_f_remap.c

apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.i"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn_f_remap && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/robin/src/sbn-instance-1/nasa/cFS/apps/sbn_f_remap/fsw/src/sbn_f_remap.c > CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.i

apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.s"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn_f_remap && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/robin/src/sbn-instance-1/nasa/cFS/apps/sbn_f_remap/fsw/src/sbn_f_remap.c -o CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.s

# Object files for target sbn_f_remap
sbn_f_remap_OBJECTS = \
"CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o"

# External object files for target sbn_f_remap
sbn_f_remap_EXTERNAL_OBJECTS =

apps/sbn_f_remap/sbn_f_remap.so: apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/fsw/src/sbn_f_remap.c.o
apps/sbn_f_remap/sbn_f_remap.so: apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/build.make
apps/sbn_f_remap/sbn_f_remap.so: apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module sbn_f_remap.so"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn_f_remap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sbn_f_remap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/build: apps/sbn_f_remap/sbn_f_remap.so
.PHONY : apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/build

apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/clean:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn_f_remap && $(CMAKE_COMMAND) -P CMakeFiles/sbn_f_remap.dir/cmake_clean.cmake
.PHONY : apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/clean

apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/depend:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robin/src/sbn-instance-1/nasa/cFS/cfe /home/robin/src/sbn-instance-1/nasa/cFS/apps/sbn_f_remap /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1 /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn_f_remap /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sbn_f_remap/CMakeFiles/sbn_f_remap.dir/depend

