echo "UNF IEEE CS Ros Kinetic Install Script"
echo "===========     12-19-2016   ========="
echo "======================================"
echo "updating locals and repositories"
sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update -y

echo "Installing ROS"
sudo apt-get install ros-kinetic-desktop-full -y
sudo apt-get install python-rosdep -y
sudo apt-get install python-rosinstall y-
sudo rosdep init
rosdep update

echo "Setting up Bash terminal variables"
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
