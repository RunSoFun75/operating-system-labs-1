# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /snap/clion/151/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/151/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/andrey/GIT/operating-system-labs/pipe communication"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/andrey/GIT/operating-system-labs/pipe communication/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/pipe_communication.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pipe_communication.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pipe_communication.dir/flags.make

CMakeFiles/pipe_communication.dir/main.c.o: CMakeFiles/pipe_communication.dir/flags.make
CMakeFiles/pipe_communication.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/andrey/GIT/operating-system-labs/pipe communication/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pipe_communication.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pipe_communication.dir/main.c.o -c "/home/andrey/GIT/operating-system-labs/pipe communication/main.c"

CMakeFiles/pipe_communication.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pipe_communication.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/andrey/GIT/operating-system-labs/pipe communication/main.c" > CMakeFiles/pipe_communication.dir/main.c.i

CMakeFiles/pipe_communication.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pipe_communication.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/andrey/GIT/operating-system-labs/pipe communication/main.c" -o CMakeFiles/pipe_communication.dir/main.c.s

# Object files for target pipe_communication
pipe_communication_OBJECTS = \
"CMakeFiles/pipe_communication.dir/main.c.o"

# External object files for target pipe_communication
pipe_communication_EXTERNAL_OBJECTS =

pipe_communication: CMakeFiles/pipe_communication.dir/main.c.o
pipe_communication: CMakeFiles/pipe_communication.dir/build.make
pipe_communication: CMakeFiles/pipe_communication.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/andrey/GIT/operating-system-labs/pipe communication/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pipe_communication"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pipe_communication.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pipe_communication.dir/build: pipe_communication

.PHONY : CMakeFiles/pipe_communication.dir/build

CMakeFiles/pipe_communication.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pipe_communication.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pipe_communication.dir/clean

CMakeFiles/pipe_communication.dir/depend:
	cd "/home/andrey/GIT/operating-system-labs/pipe communication/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/andrey/GIT/operating-system-labs/pipe communication" "/home/andrey/GIT/operating-system-labs/pipe communication" "/home/andrey/GIT/operating-system-labs/pipe communication/cmake-build-debug" "/home/andrey/GIT/operating-system-labs/pipe communication/cmake-build-debug" "/home/andrey/GIT/operating-system-labs/pipe communication/cmake-build-debug/CMakeFiles/pipe_communication.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/pipe_communication.dir/depend

