FROM ros:melodic

RUN apt-get update && \
    apt-get install curl gnupg apt-utils -y && \
    curl -s -L https://nvidia.github.io/nvidia-container-runtime/gpgkey | apt-key add - && \
    distribution=$(. /etc/os-release;echo $ID$VERSION_ID) && \
    curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.list | \
    tee /etc/apt/sources.list.d/nvidia-container-runtime.list && \
    apt-get update && \
    apt-get install -y nvidia-container-runtime && \
    apt-get install -y tilix git bash-completion ros-melodic-desktop-full
    

ENV DISPLAY=:0
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all

CMD ["bash"]

VOLUME /tmp/.X11-unix:/tmp/.X11-unix 

# kurmak için
# sudo apt install docker.io
# docker build -t ros_ehli .

#ilk defa ayağa kaydırmak için
#user unutumkasın
#ros diye klasör oluşturulsun
# mkdir ~/ros
# docker run --gpus all -it -e DISPLAY=$DISPLAY -e PULSE_SERVER=127.0.0.1 -v /dev/dri:/dev/dri -v /home/user/ros:/home --net host -v /tmp/.X11-unix:/tmp/.X11-unix --name ros_sistemi ros_ehli

# çalşıtrımak için
# docker start ros_sistemi
# docker attach ros_sistemi
