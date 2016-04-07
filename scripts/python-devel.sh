#!/bin/bash

IMAGE=zizi0429/python-devel
NAME=python-devel-env

docker ps -a | grep $NAME > /dev/null
if [ $? -eq 0 ];
then
  docker start -i $NAME

else
  docker run -it \
    --user=$USER \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers:/etc/sudoers:ro" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/home/$USER:/home/workspace" \
    --name=$NAME \
    $IMAGE
fi
