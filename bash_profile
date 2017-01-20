#
export LANG=ja_JP.UTF-8
export JAVA_OPTIONS="-Dfile.encoding=UTF-8"

if [ "${MACHINENAME}" = "" ]; then
    export MACHINENAME='local'
fi

export PS1='\u@$MACHINENAME : \W \$ '
