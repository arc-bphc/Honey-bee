FROM osrf/ros:noetic-desktop-full

ARG USERNAME=Queen
ARG UID=1000
ARG GID=${UID}

RUN apt-get update \
    && apt-get install -y \
    git-all \
    libarmadillo-dev \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd --gid ${GID} ${USERNAME} \
    && useradd -s /bin/bash --uid ${UID} --gid ${GID} -m ${USERNAME} \
    && mkdir /home/$USERNAME/.config && chown ${UID}:${GID} /home/${USERNAME}/.config

RUN apt-get update \
    && apt-get install -y sudo \
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc//sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME} \
    && rm -rf /var/lib/apt/lists/*

USER ${USERNAME}

WORKDIR /home/${USERNAME}/

RUN git clone -b v2.7.1 https://github.com/stevengj/nlopt.git \
    && cd nlopt \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make \
    && sudo make install

RUN mkdir catkin_ws catkin_ws/src \
    && cd catkin_ws/src \
    && git clone https://github.com/HKUST-Aerial-Robotics/Fast-Planner.git

WORKDIR /home/${USERNAME}/catkin_ws

RUN bash -c "source /opt/ros/$ROS_DISTRO/setup.bash && catkin_make"

RUN echo "source /home/${USERNAME}/catkin_ws/devel/setup.bash" >> ~/.bashrc
