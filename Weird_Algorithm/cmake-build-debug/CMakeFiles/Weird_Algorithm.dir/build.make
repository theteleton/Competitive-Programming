# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\CP\Competitive-Programming\Weird_Algorithm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\CP\Competitive-Programming\Weird_Algorithm\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\Weird_Algorithm.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\Weird_Algorithm.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Weird_Algorithm.dir\flags.make

CMakeFiles\Weird_Algorithm.dir\main.cpp.obj: CMakeFiles\Weird_Algorithm.dir\flags.make
CMakeFiles\Weird_Algorithm.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CP\Competitive-Programming\Weird_Algorithm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Weird_Algorithm.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Weird_Algorithm.dir\main.cpp.obj /FdCMakeFiles\Weird_Algorithm.dir\ /FS -c C:\CP\Competitive-Programming\Weird_Algorithm\main.cpp
<<

CMakeFiles\Weird_Algorithm.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Weird_Algorithm.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\Weird_Algorithm.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CP\Competitive-Programming\Weird_Algorithm\main.cpp
<<

CMakeFiles\Weird_Algorithm.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Weird_Algorithm.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Weird_Algorithm.dir\main.cpp.s /c C:\CP\Competitive-Programming\Weird_Algorithm\main.cpp
<<

# Object files for target Weird_Algorithm
Weird_Algorithm_OBJECTS = \
"CMakeFiles\Weird_Algorithm.dir\main.cpp.obj"

# External object files for target Weird_Algorithm
Weird_Algorithm_EXTERNAL_OBJECTS =

Weird_Algorithm.exe: CMakeFiles\Weird_Algorithm.dir\main.cpp.obj
Weird_Algorithm.exe: CMakeFiles\Weird_Algorithm.dir\build.make
Weird_Algorithm.exe: CMakeFiles\Weird_Algorithm.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CP\Competitive-Programming\Weird_Algorithm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Weird_Algorithm.exe"
	"C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Weird_Algorithm.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Weird_Algorithm.dir\objects1.rsp @<<
 /out:Weird_Algorithm.exe /implib:Weird_Algorithm.lib /pdb:C:\CP\Competitive-Programming\Weird_Algorithm\cmake-build-debug\Weird_Algorithm.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Weird_Algorithm.dir\build: Weird_Algorithm.exe
.PHONY : CMakeFiles\Weird_Algorithm.dir\build

CMakeFiles\Weird_Algorithm.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Weird_Algorithm.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Weird_Algorithm.dir\clean

CMakeFiles\Weird_Algorithm.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\CP\Competitive-Programming\Weird_Algorithm C:\CP\Competitive-Programming\Weird_Algorithm C:\CP\Competitive-Programming\Weird_Algorithm\cmake-build-debug C:\CP\Competitive-Programming\Weird_Algorithm\cmake-build-debug C:\CP\Competitive-Programming\Weird_Algorithm\cmake-build-debug\CMakeFiles\Weird_Algorithm.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\Weird_Algorithm.dir\depend
