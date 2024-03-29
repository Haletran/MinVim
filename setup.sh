#!/bin/bash

set -u

# Variables
CONFIG_PATH="/nfs/homes/$(whoami)/.vimrc"
CONFIG_PATH_FOLDER="/nfs/homes/$(whoami)/.vim"

# Functions

## Check if there is already a vimrc file
if [ -f "$CONFIG_PATH" ]; then
    echo -e "Backing up your .vimrc"
    mv "$CONFIG_PATH" "$CONFIG_PATH.bak" > /dev/null
    echo -e "You can find your backup .vimrc at""$CONFIG_PATH.bak"
fi

# Check if there is already a .vim folder
if [ -f "$CONFIG_PATH" ]; then
    echo -e "Backing up your .vim folder"
    mv "$CONFIG_PATH_FOLDER" "$CONFIG_PATH_FOLDER.bak" > /dev/null
    echo -e "You can find your backup .vim folder at""$CONFIG_PATH_FOLDER.bak"
fi

echo -e "\033[32mSetting things up...\033[0m"
#DL .vimrc file
wget -O ~/.vimrc https://raw.githubusercontent.com/Haletran/MinVim/main/.vimrc -q > /dev/null
## Make directory for plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle  ~/.vim/colors > /dev/null

## Installing plugins

echo -e "\033[32mInstalling extensions...\033[0m"
#PATHOGEN
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim > /dev/null
#AIRLINE
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline > /dev/null
#NERDTREE
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree


#Installing themes

#onedark.vim
wget -O  ~/.vim/colors/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/onedark.vim -q > /dev/null
wget -O ~/.vim/autoload/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/onedark.vim -q > /dev/null
