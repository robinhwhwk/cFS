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
CMAKE_SOURCE_DIR = /home/hkim3019/cFS/client/cFS/cfe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hkim3019/cFS/client/cFS/build/native/default_cpu1

# Include any dependencies generated for this target.
include apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/progress.make

# Include the compile flags for this target's objects.
include apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/flags.make

apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o: apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/flags.make
apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o: /home/hkim3019/cFS/client/cFS/apps/cpu_temp/fsw/src/cpu_temp_app.c
apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o: apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/cpu_temp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o -MF CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o.d -o CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o -c /home/hkim3019/cFS/client/cFS/apps/cpu_temp/fsw/src/cpu_temp_app.c

apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/cpu_temp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/apps/cpu_temp/fsw/src/cpu_temp_app.c > CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.i

apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/cpu_temp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/apps/cpu_temp/fsw/src/cpu_temp_app.c -o CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.s

# Object files for target cpu_temp_app
cpu_temp_app_OBJECTS = \
"CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o"

# External object files for target cpu_temp_app
cpu_temp_app_EXTERNAL_OBJECTS =

apps/cpu_temp/cpu_temp_app.so: apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/fsw/src/cpu_temp_app.c.o
apps/cpu_temp/cpu_temp_app.so: apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/build.make
apps/cpu_temp/cpu_temp_app.so: apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module cpu_temp_app.so"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/cpu_temp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpu_temp_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/build: apps/cpu_temp/cpu_temp_app.so
.PHONY : apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/build

apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/clean:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/cpu_temp && $(CMAKE_COMMAND) -P CMakeFiles/cpu_temp_app.dir/cmake_clean.cmake
.PHONY : apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/clean

apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/depend:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/apps/cpu_temp /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/cpu_temp /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/cpu_temp/CMakeFiles/cpu_temp_app.dir/depend

