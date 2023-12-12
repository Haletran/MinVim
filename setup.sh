#!/bin/bash

set -u

# Variables
CONFIG_PATH="/home/$(whoami)/.vimrc"

# Functions

## Check if there is already a vimrc file
if [ -f "$CONFIG_PATH" ]; then
    echo -e "Backing up your .vimrc"
    mv "$CONFIG_PATH" "$CONFIG_PATH.bak"
    echo -e "You can find your backup .vimrc at""$CONFIG_PATH.bak"
else
    echo "There is not a .vimrc file"
fi

## Make directory for plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle

## Installing plugins
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
