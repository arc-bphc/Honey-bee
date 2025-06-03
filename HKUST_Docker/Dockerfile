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

COPY setup.sh /setup.sh
