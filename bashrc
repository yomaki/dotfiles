# bashrc

# alias
# common

if [ `uname` = "Darwin" ]; then
    # Mac OS X
    alias work='cd ~/Documents/workspace'
    alias ls='ls -G'
elif [ `uname` = "Linux" ]; then
    # Linux
    alias ls='ls --color=auto'
fi
