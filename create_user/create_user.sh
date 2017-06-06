#!/bin/bash

# create user and assign root privileges
adduser bucky
usermod -aG sudo bucky
 
# switch to new account
su - bucky
mkdir ~/.ssh
chmod 700 ~/.ssh

# vim ~/.ssh/authorized_keys 
# Paste in public key from clipboard

# update permissions on authorized_keys
chmod 600 ~/.ssh/authorized_keys

