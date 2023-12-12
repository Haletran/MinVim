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
fi

#DL .vimrc file
wget -O ~/.vimrc  https://raw.githubusercontent.com/Haletran/MinVim/main/vimrc

## Make directory for plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle

## Installing plugins

#PATHOGEN
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
#AIRLINE
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

