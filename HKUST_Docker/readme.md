1) Build docker image and call it "hkustimage" (or change it in the run script)
2) run "run_testDocker.sh"
3) inside the container... run setup.sh (should be in the root directory)
4) go to ~/catkin_ws
5) source devel/setup.bash && roslaunch plan_manage rviz.launch
6) keep rviz open

7) open another terminal
8) make it a terminal of the same container by using 
    docker exec -it <container_name> /bin/bash
9) run the ros_entrypoint.sh script in root (ros is not sourced)
10) cd ~/catkin_ws
11) source devel.setup.bash && roslaunch plan_manage kino_replan.launch
OR
11) source devel.setup.bash && roslaunch plan_manage topo_replan.launch