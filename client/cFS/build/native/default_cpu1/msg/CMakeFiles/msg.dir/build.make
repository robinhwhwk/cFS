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
include msg/CMakeFiles/msg.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include msg/CMakeFiles/msg.dir/compiler_depend.make

# Include the progress variables for this target.
include msg/CMakeFiles/msg.dir/progress.make

# Include the compile flags for this target's objects.
include msg/CMakeFiles/msg.dir/flags.make

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_ccsdspri.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_ccsdspri.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_ccsdspri.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_ccsdspri.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_init.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_init.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_init.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_init.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_integrity.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_integrity.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_integrity.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_integrity.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_shared.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_shared.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_shared.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_shared.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_checksum.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_checksum.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_checksum.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_checksum.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_fc.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_fc.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_fc.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_fc.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_time.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_time.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_time.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_sechdr_time.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_initdefaulthdr_pri.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_initdefaulthdr_pri.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_initdefaulthdr_pri.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_initdefaulthdr_pri.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.s

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o: msg/CMakeFiles/msg.dir/flags.make
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o: /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_v1.c
msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o: msg/CMakeFiles/msg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o -MF CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o.d -o CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o -c /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_v1.c

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.i"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_v1.c > CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.i

msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.s"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hkim3019/cFS/client/cFS/cfe/modules/msg/fsw/src/cfe_msg_msgid_v1.c -o CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.s

# Object files for target msg
msg_OBJECTS = \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o" \
"CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o"

# External object files for target msg
msg_EXTERNAL_OBJECTS =

msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_ccsdspri.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_init.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_integrity.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_shared.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_checksum.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_fc.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_sechdr_time.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_initdefaulthdr_pri.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/fsw/src/cfe_msg_msgid_v1.c.o
msg/libmsg.a: msg/CMakeFiles/msg.dir/build.make
msg/libmsg.a: msg/CMakeFiles/msg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libmsg.a"
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && $(CMAKE_COMMAND) -P CMakeFiles/msg.dir/cmake_clean_target.cmake
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
msg/CMakeFiles/msg.dir/build: msg/libmsg.a
.PHONY : msg/CMakeFiles/msg.dir/build

msg/CMakeFiles/msg.dir/clean:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg && $(CMAKE_COMMAND) -P CMakeFiles/msg.dir/cmake_clean.cmake
.PHONY : msg/CMakeFiles/msg.dir/clean

msg/CMakeFiles/msg.dir/depend:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/cfe/modules/msg /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/msg/CMakeFiles/msg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : msg/CMakeFiles/msg.dir/depend

