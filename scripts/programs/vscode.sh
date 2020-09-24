#!/bin/bash


if ! which code
then
    echo "∞ installing VS code"
    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt install code
else
    echo "Already installed: ∞ VS code"
fi