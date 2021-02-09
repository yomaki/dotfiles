#!/bin/zsh
#
echo "export ZDOTDIR=$HOME/.zsh" >> $HOME/.zshenv 
echo "source $ZDOTDIR/.zshenv" >> $HOME/.zshenv 

# vimrc
#echo "if filereadable(expand('~/config/vimrc'))" >> ~/.vimrc
#echo "  source ~/config/vimrc" >> ~/.vimrc
#echo "endif" >> ~/.vimrc

#echo "source ~/dotfiles/zsh_profile" >> ~/.zsh_profile
#echo "source ~/dotfiles/zshrc" >> ~/.zshrc


#ln -s $HOME/.dotfiles_github/bashrc $HOME/.bashrc
#echo "source \$HOME/.dotfiles_github/bashrc" > $HOME/.bashrc

# set bash_profile
#if [ -f ~/.bash_profile ]; then
#    mv ~/.bash_profile ~/.bash_profile_org
#fi
#ln -s $HOME/.dotfiles_github/bash_profile $HOME/.bash_profile
#echo "source \$HOME/.dotfiles_github/bash_profile" > $HOME/.bash_profile
#echo "test -r ~/.bashrc && . ~/.bashrc" >> $HOME/.bash_profile

# reload config files
#source $HOME/.bashrc
#source $HOME/.bash_profile
