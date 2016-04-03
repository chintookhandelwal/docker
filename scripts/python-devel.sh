#!/bin/bash

docker run -it \
  --rm=true \
  --user=$USER \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  --volume="/etc/sudoers:/etc/sudoers:ro" \
  --volume="/home/$USER:/home/$USER" \
  --volume="/home/$USER:/home/workspace" \
  zizi0429/python-devel

