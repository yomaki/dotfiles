# bash_profile

# common
export LANG=ja_JP.UTF-8
export JAVA_OPTIONS="-Dfile.encoding=UTF-8"

# OS
if [ `uname` = "Darwin" ];then
    # Mac OS X
    export PS1="\[\e[36m\]\u@`uname -n | sed -e "s/\.local//g"`\[\e[0m\] : \W \$ "
elif [ `uname` = "Linux" ];then
    # Linux
    export PS1="\[\e[32m\]\u@`uname -n | sed -e "s/\.local//g"`\[\e[0m\] : \W \$ "
fi 

# load bashrc
test -r ~/.bashrc && . ~/.bashrc


#export PATH="$PYENV_ROOT/bin:$PATH"
#export PYENV_ROOT="$HOME/.pyenv"

#eval "$(pyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/usr/local/google-cloud-sdk/path.bash.inc' ]; then source '/usr/local/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/usr/local/google-cloud-sdk/completion.bash.inc' ]; then source '/usr/local/google-cloud-sdk/completion.bash.inc'; fi
