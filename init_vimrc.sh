#!/bin/zsh

# vimrc
echo "if filereadable(expand('~/config/vimrc'))" >> ~/.vimrc
echo "  source ~/config/vimrc" >> ~/.vimrc
echo "endif" >> ~/.vimrc
