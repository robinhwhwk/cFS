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
CMAKE_SOURCE_DIR = /home/hkim3019/cFS/server/cFS/cfe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hkim3019/cFS/server/cFS/build/native/default_cpu1

# Include any dependencies generated for this target.
include apps/sbn/CMakeFiles/sbn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/sbn/CMakeFiles/sbn.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/sbn/CMakeFiles/sbn.dir/progress.make

# Include the compile flags for this target's objects.
include apps/sbn/CMakeFiles/sbn.dir/flags.make

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o: apps/sbn/CMakeFiles/sbn.dir/flags.make
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o: /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_app.c
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o: apps/sbn/CMakeFiles/sbn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/server/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o -MF CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o.d -o CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o -c /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_app.c

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sbn.dir/fsw/src/sbn_app.c.i"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_app.c > CMakeFiles/sbn.dir/fsw/src/sbn_app.c.i

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sbn.dir/fsw/src/sbn_app.c.s"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_app.c -o CMakeFiles/sbn.dir/fsw/src/sbn_app.c.s

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o: apps/sbn/CMakeFiles/sbn.dir/flags.make
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o: /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_cmds.c
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o: apps/sbn/CMakeFiles/sbn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/server/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o -MF CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o.d -o CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o -c /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_cmds.c

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.i"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_cmds.c > CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.i

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.s"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_cmds.c -o CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.s

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o: apps/sbn/CMakeFiles/sbn.dir/flags.make
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o: /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_pack.c
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o: apps/sbn/CMakeFiles/sbn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/server/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o -MF CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o.d -o CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o -c /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_pack.c

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.i"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_pack.c > CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.i

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.s"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_pack.c -o CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.s

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o: apps/sbn/CMakeFiles/sbn.dir/flags.make
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o: /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_subs.c
apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o: apps/sbn/CMakeFiles/sbn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/server/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o -MF CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o.d -o CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o -c /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_subs.c

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.i"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_subs.c > CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.i

apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.s"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/server/cFS/apps/sbn/fsw/src/sbn_subs.c -o CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.s

# Object files for target sbn
sbn_OBJECTS = \
"CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o" \
"CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o" \
"CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o" \
"CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o"

# External object files for target sbn
sbn_EXTERNAL_OBJECTS =

apps/sbn/sbn.so: apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_app.c.o
apps/sbn/sbn.so: apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_cmds.c.o
apps/sbn/sbn.so: apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_pack.c.o
apps/sbn/sbn.so: apps/sbn/CMakeFiles/sbn.dir/fsw/src/sbn_subs.c.o
apps/sbn/sbn.so: apps/sbn/CMakeFiles/sbn.dir/build.make
apps/sbn/sbn.so: apps/sbn/CMakeFiles/sbn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hkim3019/cFS/server/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C shared module sbn.so"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sbn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/sbn/CMakeFiles/sbn.dir/build: apps/sbn/sbn.so
.PHONY : apps/sbn/CMakeFiles/sbn.dir/build

apps/sbn/CMakeFiles/sbn.dir/clean:
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn && $(CMAKE_COMMAND) -P CMakeFiles/sbn.dir/cmake_clean.cmake
.PHONY : apps/sbn/CMakeFiles/sbn.dir/clean

apps/sbn/CMakeFiles/sbn.dir/depend:
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/server/cFS/cfe /home/hkim3019/cFS/server/cFS/apps/sbn /home/hkim3019/cFS/server/cFS/build/native/default_cpu1 /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn/CMakeFiles/sbn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sbn/CMakeFiles/sbn.dir/depend

