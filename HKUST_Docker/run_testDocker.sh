#! /bin/bash

docker run -it \
--user Queen \
--network=host \
--ipc=host \
-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
--env=DISPLAY \
hkustimage