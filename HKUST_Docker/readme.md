1) Build docker image and call it "hkustimage" (or change it in the run script)
2) run "run_testDocker.sh"
3) roslaunch plan_manage rviz.launch
4) keep rviz open

7) open another terminal
8) make it a terminal of the same container by using 
    docker exec -it <container_name> /bin/bash
11) roslaunch plan_manage kino_replan.launch
OR
11) roslaunch plan_manage topo_replan.launch
