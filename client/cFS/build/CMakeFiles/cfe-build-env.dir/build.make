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

# Utility rule file for cfe-build-env.

# Include any custom commands dependencies for this target.
include CMakeFiles/cfe-build-env.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cfe-build-env.dir/progress.make

CMakeFiles/cfe-build-env:
	cd /home/hkim3019/cFS/client/cFS/cfe && /usr/bin/cmake -D BIN=/home/hkim3019/cFS/client/cFS/build -P /home/hkim3019/cFS/client/cFS/cfe/cmake/generate_build_env.cmake

cfe-build-env: CMakeFiles/cfe-build-env
cfe-build-env: CMakeFiles/cfe-build-env.dir/build.make
.PHONY : cfe-build-env

# Rule to build all files generated by this target.
CMakeFiles/cfe-build-env.dir/build: cfe-build-env
.PHONY : CMakeFiles/cfe-build-env.dir/build

CMakeFiles/cfe-build-env.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cfe-build-env.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cfe-build-env.dir/clean

CMakeFiles/cfe-build-env.dir/depend:
	cd /home/hkim3019/cFS/client/cFS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/cfe /home/hkim3019/cFS/client/cFS/build /home/hkim3019/cFS/client/cFS/build /home/hkim3019/cFS/client/cFS/build/CMakeFiles/cfe-build-env.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cfe-build-env.dir/depend

