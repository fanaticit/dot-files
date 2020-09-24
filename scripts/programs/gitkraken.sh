#!/bin/bash

if ! which gitkraken
then
    echo "🐙 installing gitkraken"
    wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
    sudo dpkg -i gitkraken-amd64.deb
else
    echo "Already installed: 🐙 gitkraken"
fi