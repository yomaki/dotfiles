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

alias hey='python3 ~/test.py'

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

function rprompt-git-current-branch {
  local branch_name st branch_status

  branch='\ue0a0'
  color='%{\e[38;5;'
  green='114m%}'
  red='001m%}'
  yellow='227m%}'
  blue='033m%}'
  reset='%{\e[0m%}'

  if [ ! -e  ".git" ]; then
    echo "[%*]"
    return
  fi
  branch_name=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    branch_status="${color}${green}"
  elif [[ -n `echo "$st" | grep "^Untracked files"` ]]; then
    branch_status="${color}${red}?"
  elif [[ -n `echo "$st" | grep "^Changes not staged for commit"` ]]; then
    branch_status="${color}${red}+"
  elif [[ -n `echo "$st" | grep "^Changes to be committed"` ]]; then
    branch_status="${color}${yellow}!"
  elif [[ -n `echo "$st" | grep "^rebase in progress"` ]]; then
    echo "${color}${red} !(no branch)${reset} [%*]"
    return
  else
    branch_status="${color}${blue}"
  fi
  echo "${branch_status}$branch_name${reset} [%*]"
}

setopt prompt_subst

RPROMPT='`rprompt-git-current-branch`'
