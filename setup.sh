# clone full repo
git submodule init
git submodule update

sudo apt install cmake -y

# install ros melodic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl -y # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-melodic-desktop -y

################################################
#              Jetson multi cam
################################################
# install python3.6 and jetson multi cam
sudo add-apt-repository -y ppa:jblgf0/python
sudo apt-get update
sudo apt-get install python3.6 -y
sudo apt install python3-pip -y
# install scikit first to avoid opencv error
pip3 install scikit-build==0.16.6
cd jetson-multicamera-pipelines && python3.6 -m pip install -e multi-usb-cam

################################################
#              SLAM
################################################
sudo apt-get install libblas-dev
sudo apt-get install liblapack-dev
sudo apt-get install libopenni2-dev

# Requires cuda tool kit
# refer to https://developer.nvidia.com/cuda-downloads
# wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
# sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
# wget https://developer.download.nvidia.com/compute/cuda/12.0.1/local_installers/cuda-repo-ubuntu1804-12-0-local_12.0.1-525.85.12-1_amd64.deb
# sudo dpkg -i cuda-repo-ubuntu1804-12-0-local_12.0.1-525.85.12-1_amd64.deb
# sudo cp /var/cuda-repo-ubuntu1804-12-0-local/cuda-*-keyring.gpg /usr/share/keyrings/
# sudo apt-get update
# sudo apt-get -y install cuda


################################################
#              bag_tools
################################################
sudo apt-get install ros-melodic-catkin
sudo apt install python-rosdep2
source /opt/ros/melodic/setup.bash
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro melodic -y
catkin_make install --pkg bag_tools
