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
CMAKE_BINARY_DIR = /home/robin/src/sbn-instance-1/nasa/cFS/build

# Utility rule file for tabletool-execute.

# Include any custom commands dependencies for this target.
include tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/progress.make

tools/elf2cfetbl/CMakeFiles/tabletool-execute: tools/elf2cfetbl/elf2cfetbl
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/tables && $(MAKE) CC="/usr/bin/cc" CFLAGS="" AR="/usr/bin/ar" TBLTOOL="/home/robin/src/sbn-instance-1/nasa/cFS/build/tools/elf2cfetbl/elf2cfetbl" cfetables

tabletool-execute: tools/elf2cfetbl/CMakeFiles/tabletool-execute
tabletool-execute: tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/build.make
.PHONY : tabletool-execute

# Rule to build all files generated by this target.
tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/build: tabletool-execute
.PHONY : tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/build

tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/clean:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build/tools/elf2cfetbl && $(CMAKE_COMMAND) -P CMakeFiles/tabletool-execute.dir/cmake_clean.cmake
.PHONY : tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/clean

tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/depend:
	cd /home/robin/src/sbn-instance-1/nasa/cFS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robin/src/sbn-instance-1/nasa/cFS/cfe /home/robin/src/sbn-instance-1/nasa/cFS/tools/elf2cfetbl /home/robin/src/sbn-instance-1/nasa/cFS/build /home/robin/src/sbn-instance-1/nasa/cFS/build/tools/elf2cfetbl /home/robin/src/sbn-instance-1/nasa/cFS/build/tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/elf2cfetbl/CMakeFiles/tabletool-execute.dir/depend

