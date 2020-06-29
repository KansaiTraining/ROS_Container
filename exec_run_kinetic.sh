#!/bin/bash

#DIR= basename $(pwd)
MYDIR="$(basename $(pwd))"

docker exec -it kin-test  /root/${MYDIR}/sourceshell.sh
#docker exec -it kin-test  /root/first_ws/sourceshell.sh

#source devel/setup.bash
