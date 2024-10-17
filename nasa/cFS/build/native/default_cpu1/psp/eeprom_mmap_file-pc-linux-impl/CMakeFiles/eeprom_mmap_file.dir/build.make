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
include psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/compiler_depend.make

# Include the progress variables for this target.
include psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/progress.make

# Include the compile flags for this target's objects.
include psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/flags.make

psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o: psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/flags.make
psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o: /home/robin/src/sbn-instance-1/nasa/cFS/psp/fsw/modules/eeprom_mmap_file/cfe_psp_eeprom_mmap_file.c
psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o: psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o -MF CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o.d -o CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o -c /home/robin/src/sbn-instance-1/nasa/cFS/psp/fsw/modules/eeprom_mmap_file/cfe_psp_eeprom_mmap_file.c

psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.i"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/robin/src/sbn-instance-1/nasa/cFS/psp/fsw/modules/eeprom_mmap_file/cfe_psp_eeprom_mmap_file.c > CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.i

psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.s"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/robin/src/sbn-instance-1/nasa/cFS/psp/fsw/modules/eeprom_mmap_file/cfe_psp_eeprom_mmap_file.c -o CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.s

# Object files for target eeprom_mmap_file
eeprom_mmap_file_OBJECTS = \
"CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o"

# External object files for target eeprom_mmap_file
eeprom_mmap_file_EXTERNAL_OBJECTS =

psp/eeprom_mmap_file-pc-linux-impl/libeeprom_mmap_file.a: psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/cfe_psp_eeprom_mmap_file.c.o
psp/eeprom_mmap_file-pc-linux-impl/libeeprom_mmap_file.a: psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/build.make
psp/eeprom_mmap_file-pc-linux-impl/libeeprom_mmap_file.a: psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libeeprom_mmap_file.a"
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl && $(CMAKE_COMMAND) -P CMakeFiles/eeprom_mmap_file.dir/cmake_clean_target.cmake
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eeprom_mmap_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/build: psp/eeprom_mmap_file-pc-linux-impl/libeeprom_mmap_file.a
.PHONY : psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/build

psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/clean:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl && $(CMAKE_COMMAND) -P CMakeFiles/eeprom_mmap_file.dir/cmake_clean.cmake
.PHONY : psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/clean

psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/depend:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robin/src/sbn-instance-1/nasa/cFS/cfe /home/robin/src/sbn-instance-1/nasa/cFS/psp/fsw/modules/eeprom_mmap_file /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1 /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : psp/eeprom_mmap_file-pc-linux-impl/CMakeFiles/eeprom_mmap_file.dir/depend

