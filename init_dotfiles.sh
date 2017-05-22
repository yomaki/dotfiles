#!/bin/bash

# 
# git clone git@github.com:ymaki620/dotfiles.git ~/.dotfiles_github


# set bashrc
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc_org
fi
ln -s $HOME/.dotfiles_github/bashrc $HOME/.bashrc

# set bash_profile
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile_org
fi
ln -s $HOME/.dotfiles_github/bash_profile $HOME/.bash_profile

# set vimrc
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_org
fi
ln -s $HOME/.dotfiles_github/vimrc $HOME/.vimrc
