#!/bin/bash

# Firefox browser
if ! which firefox
then
    echo "🦊 Installing Firefox"
    sudo add-apt-repository ppa:mozillateam/firefox-next -y
    sudo apt update
    sudo apt install -y firefox
else
    echo "Already installed: 🦊 firefox"
fi

