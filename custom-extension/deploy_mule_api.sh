#!/bin/bash

sudo apt-get update -y
sudo apt install -y docker.io
sudo docker pull rajanm/muleruntime:v1
sudo docker run -d --name mule39instance -p 8081:8081 rajanm/muleruntime:v1
