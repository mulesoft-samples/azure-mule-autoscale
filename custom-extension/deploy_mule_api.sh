#!/bin/bash
# This script will run in the /home/[username] folder in each Linux VM in the VM Scale Set.

sudo apt-get update -y
sudo apt install -y openjdk-8-jdk
sudo apt install unzip
echo `pwd` >> /tmp/text.txt
