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
CMAKE_BINARY_DIR = /home/hkim3019/cFS/server/cFS/build

# Utility rule file for cfe-module-version.

# Include any custom commands dependencies for this target.
include CMakeFiles/cfe-module-version.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cfe-module-version.dir/progress.make

CMakeFiles/cfe-module-version:
	cd /home/hkim3019/cFS/server/cFS/cfe && /usr/bin/cmake -D BIN=/home/hkim3019/cFS/server/cFS/build -P /home/hkim3019/cFS/server/cFS/cfe/cmake/generate_git_module_version.cmake

cfe-module-version: CMakeFiles/cfe-module-version
cfe-module-version: CMakeFiles/cfe-module-version.dir/build.make
.PHONY : cfe-module-version

# Rule to build all files generated by this target.
CMakeFiles/cfe-module-version.dir/build: cfe-module-version
.PHONY : CMakeFiles/cfe-module-version.dir/build

CMakeFiles/cfe-module-version.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cfe-module-version.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cfe-module-version.dir/clean

CMakeFiles/cfe-module-version.dir/depend:
	cd /home/hkim3019/cFS/server/cFS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hkim3019/cFS/server/cFS/cfe /home/hkim3019/cFS/server/cFS/cfe /home/hkim3019/cFS/server/cFS/build /home/hkim3019/cFS/server/cFS/build /home/hkim3019/cFS/server/cFS/build/CMakeFiles/cfe-module-version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cfe-module-version.dir/depend

