#!/bin/bash

# 
# git clone git@github.com:ymaki620/dotfiles.git ~/.dotfiles_github


# set bashrc
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc_org
fi
ln -s /home/$USER/.dotfiles_github/bashrc_macos /home/$USER/.bashrc

# set bash_profile
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile_org
fi
ln -s /home/$USER/.dotfiles_github/bash_profile_macos /home/$USER/.bash_profile

# set vimrc
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_org
fi
ln -s /home/$USER/.dotfiles_github/vimrc /home/$USER/.vimrc
