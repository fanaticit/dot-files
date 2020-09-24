#!/bin/bash

if ! which python3
then
    echo "🐍 Installing Python"
    sudo apt install -y python3-venv python3-pip
    pip3 install Django 
else
    echo "Already installed: 🐍 Python"
fi 


