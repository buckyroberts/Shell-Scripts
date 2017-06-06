#!/bin/bash

# update and install packages
sudo add-apt-repository -y ppa:jonathonf/python-3.6
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install build-essential nginx python3.6 python3.6-dev upstart upstart-sysv
 
# update initial RAM file system
sudo update-initramfs -u
 
# point python and pip to 3.6
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py
rm get-pip.py
sudo ln -s /usr/bin/python3.6 /usr/local/bin/python

