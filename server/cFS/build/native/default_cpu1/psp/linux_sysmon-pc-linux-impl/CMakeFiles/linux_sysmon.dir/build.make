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
include psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/compiler_depend.make

# Include the progress variables for this target.
include psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/progress.make

# Include the compile flags for this target's objects.
include psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/flags.make

psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o: psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/flags.make
psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o: /home/hkim3019/cFS/server/cFS/psp/fsw/modules/linux_sysmon/linux_sysmon.c
psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o: psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/server/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o -MF CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o.d -o CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o -c /home/hkim3019/cFS/server/cFS/psp/fsw/modules/linux_sysmon/linux_sysmon.c

psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linux_sysmon.dir/linux_sysmon.c.i"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/server/cFS/psp/fsw/modules/linux_sysmon/linux_sysmon.c > CMakeFiles/linux_sysmon.dir/linux_sysmon.c.i

psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linux_sysmon.dir/linux_sysmon.c.s"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/server/cFS/psp/fsw/modules/linux_sysmon/linux_sysmon.c -o CMakeFiles/linux_sysmon.dir/linux_sysmon.c.s

# Object files for target linux_sysmon
linux_sysmon_OBJECTS = \
"CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o"

# External object files for target linux_sysmon
linux_sysmon_EXTERNAL_OBJECTS =

psp/linux_sysmon-pc-linux-impl/liblinux_sysmon.a: psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/linux_sysmon.c.o
psp/linux_sysmon-pc-linux-impl/liblinux_sysmon.a: psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/build.make
psp/linux_sysmon-pc-linux-impl/liblinux_sysmon.a: psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hkim3019/cFS/server/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblinux_sysmon.a"
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl && $(CMAKE_COMMAND) -P CMakeFiles/linux_sysmon.dir/cmake_clean_target.cmake
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linux_sysmon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/build: psp/linux_sysmon-pc-linux-impl/liblinux_sysmon.a
.PHONY : psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/build

psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/clean:
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl && $(CMAKE_COMMAND) -P CMakeFiles/linux_sysmon.dir/cmake_clean.cmake
.PHONY : psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/clean

psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/depend:
	cd /home/hkim3019/cFS/server/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/server/cFS/cfe /home/hkim3019/cFS/server/cFS/psp/fsw/modules/linux_sysmon /home/hkim3019/cFS/server/cFS/build/native/default_cpu1 /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : psp/linux_sysmon-pc-linux-impl/CMakeFiles/linux_sysmon.dir/depend

