#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

DOTFILES=~/dotfiles                    # dotfiles directory
BACKUPDOTFILESDIR=~/dotfiles_old  

RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
NOCOLOR="\033[0m"

# old dotfiles backup directory
files=(zshrc ohmyzsh pure ohmyzsh-custom ohmyzsh-plugins)    # list of files/folders to symlink in homedir

##########
echo "${YELLOW}Updating submodules${NOCOLOR}"
git submodule update --init --recursive
echo "${GREEN}...done${NOCOLOR}"
echo -e "\n\n"

# create dotfiles_old in homedir
echo "${YELLOW}Creating $BACKUPDOTFILESDIR for backup of any existing dotfiles in ~${NOCOLOR}"
mkdir -p $BACKUPDOTFILESDIR
echo "${GREEN}...done${NOCOLOR}"
echo -e "\n\n"

# change to the dotfiles directory
echo "${YELLOW}Changing to the $DOTFILES directory${NOCOLOR}"
cd $DOTFILES || exit
echo "${GREEN}...done${NOCOLOR}"
echo -e "\n\n"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in "${files[@]}"; do
    echo "${BLUE}Moving any existing dotfiles from ~ to $BACKUPDOTFILESDIR${NOCOLOR}"
    mv ~/."$file" $BACKUPDOTFILESDIR
    echo "${BLUE}Creating symlink to $file in home directory.${NOCOLOR}"
    ln -sfh $DOTFILES/"$file" ~/."$file"
    echo
done