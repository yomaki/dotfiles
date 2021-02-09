# zshrc

# for local zshrc
test -r ~/.zshrc && . ~/.zshrc

# zsh history
# 
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY


# environment variable
export LANG=ja_JP.UTF-8

# alias
case ${OSTYPE} in
    darwin*)
        # Mac OS X
        alias ls='ls -G'
        ;;
    linux*)
        # Linux
        alias ls='ls --color=auto'
        ;;
esac

# setting prompt
if [ -z "$MYENV" ]; then
    MYENV=`uname -s`
fi
case ${OSTYPE} in
    darwin*)
        PROMPT="%F{cyan}[%n@${MYENV}]%f %c %# "
        ;;
    linux*)
        PROMPT="%F{green}[%n@${MYENV}]%f %c %# "
        ;;
esac
RPROMPT="[%D %*]"

