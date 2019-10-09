## setup ubuntu

########################################################
# Install basic download tools
########################################################
sudo apt-get update
sudo apt-get -y install curl # command line tool for transferring data with URL syntax
sudo apt-get -y install wget # command line tool for retrieving files using HTTP, HTTPS, FTP and FTPS

####################################################
#             ROS INSTALLATION
##
####################################################

# enable kernel sources
# this is necessary for the ros package librealsense in 18.04
sudo apt-get install -y sudo              # Provide the sudo rights, required for the enable_kernel_sources.sh script file below
sudo wget -O enable_kernel_sources.sh http://bit.ly/en_krnl_src
sudo bash ./enable_kernel_sources.sh
sudo apt-get update && apt-get install -y software-properties-common

# Get the ROS PPA
sudo echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list && \
    wget http://packages.ros.org/ros.key -O - | apt-key add -

# install ros
sudo apt-get -y update && \
     apt-get install -y \
     ros-melodic-desktop-full

# Install the ros packages
sudo apt-get install -y \
    python-catkin-tools \
    python-rosdep \
    python-rosinstall \
    python-rospkg \
    python-wstool \
    ros-melodic-audio-common \
    ros-melodic-catkin \
    ros-melodic-cmake-modules \
    ros-melodic-control-toolbox \
   # ros-melodic-ecto \
    ros-melodic-gazebo-ros-control \
    ros-melodic-gazebo-ros-pkgs \
    ros-melodic-joint-state-publisher \
    ros-melodic-joy \
    ros-melodic-kdl-parser \
    ros-melodic-moveit \
    ros-melodic-moveit-core \
    ros-melodic-octomap \
    ros-melodic-octomap-msgs \
    ros-melodic-octomap-rviz-plugins \
    ros-melodic-ompl \
    ros-melodic-openni-* \
    ros-melodic-pcl-conversions \
   # ros-melodic-qt-build \
    ros-melodic-realtime-tools \
    ros-melodic-robot-state-publisher \
    ros-melodic-ros-control \
    ros-melodic-ros-controllers \
    ros-melodic-tf-conversions \
    ros-melodic-tf-conversions \
    ros-melodic-robot-self-filter \
    ros-melodic-xacro \
    ros-melodic-tf2-bullet \
    ros-melodic-realtime-tools

# !!! does not work on docker, without clear error message
#RUN apt-get install -y \
#    ros-melodic-turtlebot-*

sudo rosdep init

sudo apt-get -y update

# Potentially just os tools, e.g. editor, fancy terminals
sudo apt-get install -y bash-completion     `# Allow bash completion`\
    	    	       alien               `# File conversions`\
		       terminator          `# Fancy terminal`\
		       apt-file            `# Is a software package that indexes`\
                                           `# the contents of packages in your`\
                                           `# available repositories and allows you`\
                                           `# to search for a particular file among`\
                                           `# all available packages.`\
		       autofs              `# Used to automount external device (usb, HD, ...)`\
		       bc                  `# "JrBc", A calculator that can be used from the command-line`\
		       imagemagick         `# Image manipulation (convert)`kinetic\
		       f2c                 `# Fortran to C/C++ translator`\
		       libf2c2-dev         `# To be used with f2c (fortran 2 c/c++)`\
		       man                 `# on-line manual pager`\
		       libcairo2-dev       `# 2D Graphics package`\
		       patch               `# Apply a diff file to an original`\
		       picocom             `# minimal dumb-terminal emulation program`\
		       rpm                 `#  Tools to create and apply deltarpms`\
		       scons               `# replacement for make, depends on python... ????`\
		       screen              `# terminal multiplexer with VT100/ANSI terminal emulation`\
		       shellcheck          `# lint tool for shell scripts`\
		       vim                 `# Terminal editor`\
		       swig                `# Generate scripting interfaces to C/C++ code`\
		       tcsh                `# TENEX C Shell, an enhanced version of Berkeley csh`\
		       xmlto               `# XML-to-any converter`


# Development toos
sudo apt-get install gdb
sudo apt-get install ssh

# Code dependencies
sudo apt-get install -y autoconf               `# Used to build SNOPT from source`\
		    cmake                  `# C++, Python Project builder`\
		    lsb-release            `# Linux Standard Base version reporting utility `\
		    libconfig++8-dev       `# pkgconfig`\
		    binutils               `# GNU assembler, linker and binary utilities`\
		    build-essential        `# Build tools (gcc, g++, ...)`\
		    gfortran               `# Fortran compiler`\
		    doxygen                `# Main documentation writting used`\
		    freeglut3              `# OpenGL Utility Toolkit`\
		    freeglut3-dev          `# OpenGL Utility Toolkit`\
		    libblas-dev            `# Basic Linear Algebra Subroutines 3, static library `\
		    liblapack-dev          `# Linear algebra subroutines`\
		    libeigen3-dev          `# Linear Algebra header library`\
		    libfcl-dev             `# flexible collision library`\
		    libslicot-dbg          `# SNOPT: numerical algorithms from systems and control theory`\
		    libslicot-dev          `# SNOPT: numerical algorithms from systems and control theory`\
		    libslicot0             `# SNOPT: numerical algorithms from systems and control theory`\
		    libncurses5-dev        `# Shell management library`\
		    python-dev             `# python stuff `\
		    python-netifaces       `# python stuff `\
		    python-pip             `# python stuff `\
		    python-vcstools        `# python stuff `\
		    python-wstool          `# python stuff `\
		    python-qt4             `# python stuff `\
		    python-opencv

source ~/.bashrc


### Python 3

# Basic packages required for running python3 with catkin setup.
sudo apt-get install -y python3-pip
sudo sudo -H pip3 install --upgrade pip
sudo sudo -H pip3 install --upgrade \
    catkin_pkg \
    rospkg

source ~/.bashrc

# Code dependencies ?
sudo apt-get install -y asciidoc                `# "Highly configurable text format for writing documentation"`\
    	    	         libffi-dev                # Code binder developped by Haskell`\
		                 libgirepository1.0-dev   `# Inspect GObject.`\
		                 libpango1.0-dev          `# Police rendering`\
		                 m4                       `# a macro processing language`\
		                 mesa-utils               `# Miscellaneous Mesa GL utilities`

source ~/.bashrc

sudo apt-get install -y  libgoogle-glog-dev    `# library that implements application-level logging`\
                  	     libhdf5-dev           `# Hierarchical Data Format 5`\
              		       libgflags-dev         `# commandline flags module for C++ (headers)`\
              		       libgflags2v5          `# commandline flags module for C++ (lib)`\
              		       liblua5.1-0-dev       `# Development files for the Lua language`\
              		       luarocks              `# Development files for the Lua language`\
              		       libxdg-basedir-dev    `# Implementation of the XDG Base Directory Specifications `\
              		       protobuf-compiler     `# messages formatting package`\
              		       protobuf-c-compiler   `# messages formatting package`\
              		       libeinspline-dev      `# library for interpolating cubic basis splines`


###############################################################################
# PYTHON MODULES
# pip first has to be installed with apt-get
###############################################################################


#[BASH UPDATE]
source ~/.basrc

sudo apt-get install -y python-pip3
sudo sudo -H pip2 install --upgrade pip
sudo sudo -H pip2 install pyopenssl
sudo sudo -H pip2 install --upgrade \
    colorama \
    matplotlib \
    seaborn \
    ndg-httpsclient \
    numpy \
    pyasn1 \
    schedule \
    scipy \
    sklearn \
    virtualenv \
    appdirs \
    h5py \
    keras \
    ipython \
    ipdb \
    jupyter \
    treep

sudo sudo -H pip2 install pydot==1.0.28
sudo sudo -H pip2 install pyparsing==2.0.1
sudo sudo -H pip2 install --upgrade six --target="/usr/lib/python2.7/dist-packages"
sudo sudo -H pip2 install appdirs
sudo sudo -H pip2 install --upgrade protobuf

# Basic packages required for sudoning python3 with catkin setup.
sudo apt-get install -y python2-pip
sudo sudo -H pip2 install --upgrade \
    catkin_pkg \
    rospkg
#[/BASH UPDATE]
source ~/.basrc

############################
# remove unrequired packages
############################
sudo apt-get -y update 
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
#[BASH UPDATE]
#[/BASH UPDATE]

source ~/.basrc

###########################################################################################
############ Paper Icon Theme ############################################################

sudo apt install gnome-tweak-tool

sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme paper-gtk-theme

### install desktop image ################################################################
sudo apt-get install ubuntu-wallpapers* 

