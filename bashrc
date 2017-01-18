# bashrc@github

if [ "${LOCAL}" = "" ]; then
    LOCAL='local'
fi

PS1='\u@$LOCAL : \W \$ '
