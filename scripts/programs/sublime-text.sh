#!/bin/bash

# Sublime Text
if ! which subl
then
    echo "Š Installing sublime-text"
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo apt-get install apt-transport-https
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install sublime-text 
else
    echo "Already installed: Š sublime-text"
fi 

