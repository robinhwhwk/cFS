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

# Utility rule file for generate_table_cpu1_sbn_sbn_conf_tbl.

# Include any custom commands dependencies for this target.
include apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/progress.make

apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl: /home/hkim3019/cFS/client/cFS/build/tables/cpu1_sbn.tbl79c649ecbd73d2e0b09457713079131d356584cd.sbn_conf_tbl.d
apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl: apps/sbn/libtblobj_cpu1_sbn.tbl79c649ecbd73d2e0b09457713079131d356584cd.a

/home/hkim3019/cFS/client/cFS/build/tables/cpu1_sbn.tbl79c649ecbd73d2e0b09457713079131d356584cd.sbn_conf_tbl.d: /home/hkim3019/cFS/client/cFS/tools/elf2cfetbl/scripts/generate_elf_table_rules.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating /home/hkim3019/cFS/client/cFS/build/tables/cpu1_sbn.tbl79c649ecbd73d2e0b09457713079131d356584cd.sbn_conf_tbl.d"
	cd /home/hkim3019/cFS/client/cFS/build/tables && /usr/bin/cmake -DTEMPLATE_FILE="/home/hkim3019/cFS/client/cFS/tools/elf2cfetbl/scripts/table_rule_template.d.in" -DTARGET_SCID="0x42" -DTARGET_PRID="1" -DAPP_NAME="sbn" -DTARGET_NAME="cpu1" -DARCHIVE_FILE=""/home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/sbn/libtblobj_cpu1_sbn.tbl79c649ecbd73d2e0b09457713079131d356584cd.a"" -DINSTALL_SUBDIR="cf" -DOUTPUT_FILE="/home/hkim3019/cFS/client/cFS/build/tables/cpu1_sbn.tbl79c649ecbd73d2e0b09457713079131d356584cd.sbn_conf_tbl.d" -DTABLE_NAME="sbn_conf_tbl" -DSOURCES="/home/hkim3019/cFS/client/cFS/apps/sbn/fsw/tables/sbn_conf_tbl.c" -DOBJEXT=".o" -P /home/hkim3019/cFS/client/cFS/tools/elf2cfetbl/scripts/generate_elf_table_rules.cmake

generate_table_cpu1_sbn_sbn_conf_tbl: apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl
generate_table_cpu1_sbn_sbn_conf_tbl: /home/hkim3019/cFS/client/cFS/build/tables/cpu1_sbn.tbl79c649ecbd73d2e0b09457713079131d356584cd.sbn_conf_tbl.d
generate_table_cpu1_sbn_sbn_conf_tbl: apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/build.make
.PHONY : generate_table_cpu1_sbn_sbn_conf_tbl

# Rule to build all files generated by this target.
apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/build: generate_table_cpu1_sbn_sbn_conf_tbl
.PHONY : apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/build

apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/clean:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/sbn && $(CMAKE_COMMAND) -P CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/cmake_clean.cmake
.PHONY : apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/clean

apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/depend:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/apps/sbn /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/sbn /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sbn/CMakeFiles/generate_table_cpu1_sbn_sbn_conf_tbl.dir/depend

