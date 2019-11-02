#!/bin/bash
# For info about MAME compilation see http://docs.mamedev.org/

# Go to MAME source directory
current_dir=`pwd`
echo "Current directory $current_dir"
cd /home/kodi/mame-source/

# Compile MAME. Detect number of available CPU cores.
num_proc=`nproc`
echo "Compile using $num_proc processors"
make -j$num_proc

# Return to scripts directory
cd $current_dir