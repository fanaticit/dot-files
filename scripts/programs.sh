#!/bin/bash

# Capture current working directory
Initial_DIR=$(pwd)
# Set the Directory to programs folder
cd "$(dirname "$0")"
cd programs/

# ./docker.sh
 ./firefox.sh
 ./python.sh
# ./vsc.sh
# ./vundle.sh
# ./sass.sh
 ./java.sh

./sublime-text.sh


# Return user to working directory
cd $Initial_DIR