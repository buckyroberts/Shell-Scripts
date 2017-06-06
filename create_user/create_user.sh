#!/bin/bash

# create user and assign root privileges
adduser bucky
usermod -aG sudo bucky
 
# switch to new account
su - bucky
mkdir ~/.ssh
chmod 700 ~/.ssh

# add public key to authorized keys
wget -q -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/buckyroberts/Shell-Scripts/master/create_user/id_rsa.pub

# update permissions on authorized_keys
chmod 600 ~/.ssh/authorized_keys

