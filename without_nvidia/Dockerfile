FROM ros:melodic

RUN apt-get update && \
    apt-get install curl gnupg apt-utils -y && \
    apt-get install -y tilix git bash-completion ros-melodic-desktop-full 
    

ENV DISPLAY=:0

CMD ["bash"]

VOLUME /tmp/.X11-unix:/tmp/.X11-unix 

