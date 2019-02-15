#!/bin/bash

sudo apt-get update -y
sudo apt install -y docker.io
sudo docker pull rajanm/muleruntime:latest
sudo docker run -d --name mule39instance -p 8081:8081 -v ~/muleapps:/opt/mule/apps -v ~/mulelogs:/opt/mule/logs rajanm/muleruntime
