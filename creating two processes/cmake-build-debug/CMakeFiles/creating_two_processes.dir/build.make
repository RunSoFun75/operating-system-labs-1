# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /snap/clion/145/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/145/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/andrey/operating-system-labs/creating two processes"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/andrey/operating-system-labs/creating two processes/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/creating_two_processes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/creating_two_processes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/creating_two_processes.dir/flags.make

CMakeFiles/creating_two_processes.dir/main.c.o: CMakeFiles/creating_two_processes.dir/flags.make
CMakeFiles/creating_two_processes.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/andrey/operating-system-labs/creating two processes/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/creating_two_processes.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/creating_two_processes.dir/main.c.o   -c "/home/andrey/operating-system-labs/creating two processes/main.c"

CMakeFiles/creating_two_processes.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/creating_two_processes.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/andrey/operating-system-labs/creating two processes/main.c" > CMakeFiles/creating_two_processes.dir/main.c.i

CMakeFiles/creating_two_processes.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/creating_two_processes.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/andrey/operating-system-labs/creating two processes/main.c" -o CMakeFiles/creating_two_processes.dir/main.c.s

# Object files for target creating_two_processes
creating_two_processes_OBJECTS = \
"CMakeFiles/creating_two_processes.dir/main.c.o"

# External object files for target creating_two_processes
creating_two_processes_EXTERNAL_OBJECTS =

creating_two_processes: CMakeFiles/creating_two_processes.dir/main.c.o
creating_two_processes: CMakeFiles/creating_two_processes.dir/build.make
creating_two_processes: CMakeFiles/creating_two_processes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/andrey/operating-system-labs/creating two processes/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable creating_two_processes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/creating_two_processes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/creating_two_processes.dir/build: creating_two_processes

.PHONY : CMakeFiles/creating_two_processes.dir/build

CMakeFiles/creating_two_processes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/creating_two_processes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/creating_two_processes.dir/clean

CMakeFiles/creating_two_processes.dir/depend:
	cd "/home/andrey/operating-system-labs/creating two processes/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/andrey/operating-system-labs/creating two processes" "/home/andrey/operating-system-labs/creating two processes" "/home/andrey/operating-system-labs/creating two processes/cmake-build-debug" "/home/andrey/operating-system-labs/creating two processes/cmake-build-debug" "/home/andrey/operating-system-labs/creating two processes/cmake-build-debug/CMakeFiles/creating_two_processes.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/creating_two_processes.dir/depend

