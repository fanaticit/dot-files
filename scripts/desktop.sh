#!/bin/bash

# Capture current working directory
Initial_DIR=$(pwd)
# Set the Directory to one level up from current script directory
cd "$(dirname "$0")"
cd ..

# # GNOME extension to move bar to bottom
# sudo apt install -y gnome-tweaks chrome-gnome-shell
# git clone https://github.com/home-sweet-gnome/dash-to-panel.git panel
# cd panel && make install
# cd ..
# rm -rf panel
# gnome-shell-extension-tool -e dash-to-panel

# # Set up the desktop environment
# cp ../img/desktop.jpg ~/desktop.jpg
# cp ../img/lock.jpg ~/lock.jpg
# dconf load /org/gnome/ < ../../settings.dconf

# Add Favorites to the bar
value=$(<./data/favorite_app_list.txt)
gsettings set org.gnome.shell favorite-apps "$value"

# Return user to working directory
cd $Initial_DIR


# To read the current favorites
#gsettings get org.gnome.shell favorite-apps