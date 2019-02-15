#!/bin/bash
# This script will run in the /home/[username] folder in each Linux VM in the VM Scale Set.

sudo apt-get update -y 
sudo apt install -y openjdk-8-jdk
sudo apt install unzip
mkdir mule
cd mule
wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.9.0/mule-standalone-3.9.0.tar.gz
tar -xvf mule-standalone-3.9.0.tar.gz
cd mule-standalone-3.9.0/bin
sh mule start
cd ../../
wget -O azure-product-api-39.zip https://github.com/mulesoft-samples/azure-mule-autoscale/blob/master/product-api/azure-product-api-39.zip?raw=true 
cp azure-product-api-39.zip mule-standalone-3.9.0/apps