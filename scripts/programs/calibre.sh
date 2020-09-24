#!/bin/bash

if ! which calibre
then
    echo "📖 installing calibre"
    sudo add-apt-repository ppa:n-muench/programs-ppa
    sudo apt-get update
    sudo apt-get install calibre
else
    echo "Already installed: 📖 calibre"
fi
