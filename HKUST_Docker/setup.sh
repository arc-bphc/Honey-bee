cd ~
git clone -b v2.7.1 https://github.com/stevengj/nlopt.git
cd nlopt
mkdir build
cd build
cmake ..
make
sudo make install

cd ~
mkdir catkin_ws catkin_ws/src
cd catkin_ws/src
git clone https://github.com/HKUST-Aerial-Robotics/Fast-Planner.git
cd ../ 
catkin_make