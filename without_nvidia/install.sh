#!/bin/bash

kullanici=$(whoami)

sudo apt install docker.io
sudo usermod -aG docker $kullanici
sudo systemctl restart docker
docker build -t ros_ehli .
mkdir ~/ros

docker run -it -e DISPLAY=$DISPLAY -e PULSE_SERVER=127.0.0.1 -v /dev/dri:/dev/dri -v /home/$kullanici/ros:/home --net host -v /tmp/.X11-unix:/tmp/.X11-unix --name ros_sistemi ros_ehli
