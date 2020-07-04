#!/bin/bash

#echo "$(basename $(pwd))"
#MYDIR="$(basename $(pwd))"
#echo "this is ${MYDIR}"

#MYDIR= $(basename $(pwd))
#MYDIR2="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#MYDIR2="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#echo ${MYDIR}
#echo $MYDIR2
#echo /root/${MYDIR}/sourceshell.sh


#echo "$(basename "$PWD")"
#mydir="$(dirname "$PWD")"
#echo "this is $mydir"

#echo "$(basename "$PWD")"
#mydir="$(basename "$PWD")"
#echo "this is $mydir"

source ./load_env_var.sh
MYDIR="$(basename ${MYCOMPLETEDIR})"
echo ${MYDIR}
