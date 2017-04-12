#!/bin/bash

# 
#git clone git@github.com:ymaki620/dotfiles.git ~/.dotfiles_github

if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc_org
fi

ln -s /Users/$USER/.dotfiles_github/bashrc_macos /Users/$USER/.bashrc
