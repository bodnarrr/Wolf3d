# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/abodnar/UNT/Projects/Wolf3D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug

# Utility rule file for sdlLibrary.

# Include the progress variables for this target.
include CMakeFiles/sdlLibrary.dir/progress.make

CMakeFiles/sdlLibrary: CMakeFiles/sdlLibrary-complete


CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-install
CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-mkdir
CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-download
CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-update
CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-patch
CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-configure
CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-build
CMakeFiles/sdlLibrary-complete: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'sdlLibrary'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles/sdlLibrary-complete
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-done

/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-install: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'sdlLibrary'"
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-build && $(MAKE) install
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-install

/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'sdlLibrary'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-build
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/homebrew/Cellar/sdl2
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/homebrew/Cellar/sdl2/source/tmp
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/homebrew/Cellar/sdl2/source/src
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-mkdir

/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-download: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-gitinfo.txt
/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-download: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'sdlLibrary'"
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/abodnar/homebrew/Cellar/sdl2/source/tmp/sdlLibrary-gitclone.cmake
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-download

/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-update: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'sdlLibrary'"
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/abodnar/homebrew/Cellar/sdl2/source/tmp/sdlLibrary-gitupdate.cmake

/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-patch: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'sdlLibrary'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-patch

/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-configure: /Users/abodnar/homebrew/Cellar/sdl2/source/tmp/sdlLibrary-cfgcmd.txt
/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-configure: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-update
/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-configure: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'sdlLibrary'"
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -DCMAKE_INSTALL_PREFIX=/Users/abodnar/homebrew/Cellar/sdl2 "-GCodeBlocks - Unix Makefiles" /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-configure

/Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-build: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'sdlLibrary'"
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-build && $(MAKE)
	cd /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-build

sdlLibrary: CMakeFiles/sdlLibrary
sdlLibrary: CMakeFiles/sdlLibrary-complete
sdlLibrary: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-install
sdlLibrary: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-mkdir
sdlLibrary: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-download
sdlLibrary: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-update
sdlLibrary: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-patch
sdlLibrary: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-configure
sdlLibrary: /Users/abodnar/homebrew/Cellar/sdl2/source/src/sdlLibrary-stamp/sdlLibrary-build
sdlLibrary: CMakeFiles/sdlLibrary.dir/build.make

.PHONY : sdlLibrary

# Rule to build all files generated by this target.
CMakeFiles/sdlLibrary.dir/build: sdlLibrary

.PHONY : CMakeFiles/sdlLibrary.dir/build

CMakeFiles/sdlLibrary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sdlLibrary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sdlLibrary.dir/clean

CMakeFiles/sdlLibrary.dir/depend:
	cd /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abodnar/UNT/Projects/Wolf3D /Users/abodnar/UNT/Projects/Wolf3D /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/CMakeFiles/sdlLibrary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sdlLibrary.dir/depend

