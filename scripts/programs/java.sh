#!/bin/bash

if ! which java
then
    echo "☕ Installing Java"
    sudo apt install -y openjdk-14-jre-headless 
else
    echo "Already installed: ☕ Java"
fi 