# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build

# Utility rule file for tinyusb_pico_pio_usb_usb_tx_pio_h.

# Include any custom commands dependencies for this target.
include pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/compiler_depend.make

# Include the progress variables for this target.
include pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/progress.make

pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h: pico-sdk/src/rp2_common/tinyusb/usb_tx.pio.h

pico-sdk/src/rp2_common/tinyusb/usb_tx.pio.h: /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/pico-sdk/lib/tinyusb/hw/mcu/raspberry_pi/Pico-PIO-USB/src/usb_tx.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating usb_tx.pio.h"
	cd /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build/pico-sdk/src/rp2_common/tinyusb && ../../../../pioasm/pioasm -o c-sdk /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/pico-sdk/lib/tinyusb/hw/mcu/raspberry_pi/Pico-PIO-USB/src/usb_tx.pio /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build/pico-sdk/src/rp2_common/tinyusb/usb_tx.pio.h

tinyusb_pico_pio_usb_usb_tx_pio_h: pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h
tinyusb_pico_pio_usb_usb_tx_pio_h: pico-sdk/src/rp2_common/tinyusb/usb_tx.pio.h
tinyusb_pico_pio_usb_usb_tx_pio_h: pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/build.make
.PHONY : tinyusb_pico_pio_usb_usb_tx_pio_h

# Rule to build all files generated by this target.
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/build: tinyusb_pico_pio_usb_usb_tx_pio_h
.PHONY : pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/build

pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/clean:
	cd /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build/pico-sdk/src/rp2_common/tinyusb && $(CMAKE_COMMAND) -P CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/cmake_clean.cmake
.PHONY : pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/clean

pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/depend:
	cd /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/pico-sdk/src/rp2_common/tinyusb /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build/pico-sdk/src/rp2_common/tinyusb /Users/michaelshipman/Developer/command_module/Code/libraries/rp2040-drf1262-lib/examples/basic/build/pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : pico-sdk/src/rp2_common/tinyusb/CMakeFiles/tinyusb_pico_pio_usb_usb_tx_pio_h.dir/depend

