# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/floyd.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/floyd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/floyd.dir/flags.make

CMakeFiles/floyd.dir/main.c.o: CMakeFiles/floyd.dir/flags.make
CMakeFiles/floyd.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/floyd.dir/main.c.o"
	mpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/floyd.dir/main.c.o   -c "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/main.c"

CMakeFiles/floyd.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/floyd.dir/main.c.i"
	mpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/main.c" > CMakeFiles/floyd.dir/main.c.i

CMakeFiles/floyd.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/floyd.dir/main.c.s"
	mpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/main.c" -o CMakeFiles/floyd.dir/main.c.s

CMakeFiles/floyd.dir/mympi.c.o: CMakeFiles/floyd.dir/flags.make
CMakeFiles/floyd.dir/mympi.c.o: ../mympi.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/floyd.dir/mympi.c.o"
	mpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/floyd.dir/mympi.c.o   -c "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/mympi.c"

CMakeFiles/floyd.dir/mympi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/floyd.dir/mympi.c.i"
	mpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/mympi.c" > CMakeFiles/floyd.dir/mympi.c.i

CMakeFiles/floyd.dir/mympi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/floyd.dir/mympi.c.s"
	mpicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/mympi.c" -o CMakeFiles/floyd.dir/mympi.c.s

# Object files for target floyd
floyd_OBJECTS = \
"CMakeFiles/floyd.dir/main.c.o" \
"CMakeFiles/floyd.dir/mympi.c.o"

# External object files for target floyd
floyd_EXTERNAL_OBJECTS =

floyd: CMakeFiles/floyd.dir/main.c.o
floyd: CMakeFiles/floyd.dir/mympi.c.o
floyd: CMakeFiles/floyd.dir/build.make
floyd: CMakeFiles/floyd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable floyd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/floyd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/floyd.dir/build: floyd

.PHONY : CMakeFiles/floyd.dir/build

CMakeFiles/floyd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/floyd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/floyd.dir/clean

CMakeFiles/floyd.dir/depend:
	cd "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd" "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd" "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug" "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug" "/mnt/c/Users/hxp/Desktop/MPI Programming/floyd/cmake-build-debug/CMakeFiles/floyd.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/floyd.dir/depend

