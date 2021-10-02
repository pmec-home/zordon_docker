FROM devrt/ros-devcontainer-vscode:melodic-desktop

RUN sudo apt update && sudo apt install -y \
        ros-melodic-gazebo-ros-pkgs \
        ros-melodic-gazebo-ros-control \
        ros-melodic-joint-state-publisher-gui \
        ros-melodic-teleop-twist-keyboard \
        ros-melodic-gmapping \
        ros-melodic-slam-gmapping \
        ros-melodic-map-server

RUN sudo apt install -y \
        ros-melodic-people \
        ros-melodic-object-recognition-msgs \
        ros-melodic-effort-controllers \
        ros-melodic-joint-state-controller

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "sudo", "-E", "/usr/local/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
