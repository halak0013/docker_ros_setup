#!/bin/bash
xhost +local:
pactl load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1
docker start ros_sistemi
docker exec ros_sistemi chgrp -R video /dev/dri
docker exec ros_sistemi su ros_sistemi -c tilix $@ 
