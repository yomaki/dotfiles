#!/bin/zsh

# vimrc
echo "if filereadable(expand('~/dotfiles/vim/vimrc'))" >> ~/.vimrc
echo "  source ~/dotfiles/vim/vimrc" >> ~/.vimrc
echo "endif" >> ~/.vimrc
