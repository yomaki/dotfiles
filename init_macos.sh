#!/bin/bash

# 
#git clone git@github.com:ymaki620/dotfiles.git ~/.dotfiles_github


# set bashrc
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc_org
fi
ln -s /Users/$USER/.dotfiles_github/bashrc_macos /Users/$USER/.bashrc

# set bash_profile
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile_org
fi
ln -s /Users/$USER/.dotfiles_github/bash_profile_macos /Users/$USER/.bash_profile


# switch off Photo.app automatically booting
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
