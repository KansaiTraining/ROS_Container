#!/bin/bash

#MYDIR="$(basename $(pwd))"
source ./load_env_var.sh
MYDIR="$(basename ${MYCOMPLETEDIR})"

#docker exec -it kin-test  /root/${MYDIR}/sourceshell.sh
#docker exec -it kin-test  /root/first_ws/sourceshell.sh
docker exec -it kin-test /ros_entrypoint.sh bash

#source devel/setup.bash
