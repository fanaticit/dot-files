#!/bin/bash

# Capture current working directory
Initial_DIR=$(pwd)
# Set the Directory to programs folder
cd "$(dirname "$0")"
cd programs/


 ./firefox.sh
 ./python.sh
 ./sublime-text.sh
 ./java.sh
 ./calibre.sh
 ./gitkraken.sh
 ./vscode.sh

# ./docker.sh
# ./vsc.sh
# ./vundle.sh
# ./sass.sh

# Return user to working directory
cd $Initial_DIR