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
CMAKE_BINARY_DIR = /home/hkim3019/cFS/client/cFS/build

# Utility rule file for native_default_cpu1-clean.

# Include any custom commands dependencies for this target.
include CMakeFiles/native_default_cpu1-clean.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/native_default_cpu1-clean.dir/progress.make

CMakeFiles/native_default_cpu1-clean:
	cd /home/hkim3019/cFS/client/cFS/build/native/default_cpu1 && $(MAKE) clean

native_default_cpu1-clean: CMakeFiles/native_default_cpu1-clean
native_default_cpu1-clean: CMakeFiles/native_default_cpu1-clean.dir/build.make
.PHONY : native_default_cpu1-clean

# Rule to build all files generated by this target.
CMakeFiles/native_default_cpu1-clean.dir/build: native_default_cpu1-clean
.PHONY : CMakeFiles/native_default_cpu1-clean.dir/build

CMakeFiles/native_default_cpu1-clean.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/native_default_cpu1-clean.dir/cmake_clean.cmake
.PHONY : CMakeFiles/native_default_cpu1-clean.dir/clean

CMakeFiles/native_default_cpu1-clean.dir/depend:
	cd /home/hkim3019/cFS/client/cFS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/build /home/hkim3019/cFS/client/cFS/build /home/hkim3019/cFS/client/cFS/build/CMakeFiles/native_default_cpu1-clean.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/native_default_cpu1-clean.dir/depend

