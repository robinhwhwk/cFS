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
include evs/CMakeFiles/evs_headercheck.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include evs/CMakeFiles/evs_headercheck.dir/compiler_depend.make

# Include the progress variables for this target.
include evs/CMakeFiles/evs_headercheck.dir/progress.make

# Include the compile flags for this target's objects.
include evs/CMakeFiles/evs_headercheck.dir/flags.make

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o: evs/src/check_cfe_evs_eventids.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_eventids.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_eventids.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_eventids.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o: evs/src/check_cfe_evs_extern_typedefs.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_extern_typedefs.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_extern_typedefs.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_extern_typedefs.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o: evs/src/check_cfe_evs_fcncodes.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_fcncodes.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_fcncodes.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_fcncodes.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o: evs/src/check_cfe_evs_interface_cfg.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_interface_cfg.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_interface_cfg.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_interface_cfg.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o: evs/src/check_cfe_evs_internal_cfg.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_internal_cfg.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_internal_cfg.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_internal_cfg.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o: evs/src/check_cfe_evs_mission_cfg.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_mission_cfg.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_mission_cfg.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_mission_cfg.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o: evs/src/check_cfe_evs_msgdefs.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgdefs.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgdefs.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgdefs.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o: evs/src/check_cfe_evs_msg.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msg.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msg.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msg.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o: evs/src/check_cfe_evs_msgids.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgids.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgids.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgids.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o: evs/src/check_cfe_evs_msgstruct.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgstruct.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgstruct.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_msgstruct.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o: evs/src/check_cfe_evs_platform_cfg.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_platform_cfg.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_platform_cfg.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_platform_cfg.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.s

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o: evs/CMakeFiles/evs_headercheck.dir/flags.make
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o: evs/src/check_cfe_evs_topicids.h.c
evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o: evs/CMakeFiles/evs_headercheck.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o -MF CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o.d -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o -c /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_topicids.h.c

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_topicids.h.c > CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.i

evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/src/check_cfe_evs_topicids.h.c -o CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.s

# Object files for target evs_headercheck
evs_headercheck_OBJECTS = \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o" \
"CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o"

# External object files for target evs_headercheck
evs_headercheck_EXTERNAL_OBJECTS =

evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_eventids.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_extern_typedefs.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_fcncodes.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_interface_cfg.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_internal_cfg.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_mission_cfg.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgdefs.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msg.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgids.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_msgstruct.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_platform_cfg.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/src/check_cfe_evs_topicids.h.c.o
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/build.make
evs/libevs_headercheck.a: evs/CMakeFiles/evs_headercheck.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking C static library libevs_headercheck.a"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && $(CMAKE_COMMAND) -P CMakeFiles/evs_headercheck.dir/cmake_clean_target.cmake
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/evs_headercheck.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
evs/CMakeFiles/evs_headercheck.dir/build: evs/libevs_headercheck.a
.PHONY : evs/CMakeFiles/evs_headercheck.dir/build

evs/CMakeFiles/evs_headercheck.dir/clean:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs && $(CMAKE_COMMAND) -P CMakeFiles/evs_headercheck.dir/cmake_clean.cmake
.PHONY : evs/CMakeFiles/evs_headercheck.dir/clean

evs/CMakeFiles/evs_headercheck.dir/depend:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/cfe/modules/evs /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/evs/CMakeFiles/evs_headercheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : evs/CMakeFiles/evs_headercheck.dir/depend

