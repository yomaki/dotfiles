# bashrc@github

if [ "${MACHINENAME}" = "" ]; then
    MACHINENAME='local'
fi

PS1='\u@$MACHINENAME : \W \$ '
