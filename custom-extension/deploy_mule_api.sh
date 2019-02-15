#!/bin/bash

sudo apt-get update -y
sudo apt install -y docker.io
sudo docker pull rajanm/muleruntime
sudo docker run -d --name mule39instance -p 8081:8081 -v ~/muleapps:/opt/mule/apps -v ~/mulelogs:/opt/mule/logs rajanm/muleruntime
wget -O azure-product-api-39.zip https://github.com/mulesoft-samples/azure-mule-autoscale/blob/master/product-api/azure-product-api-39.zip?raw=true 
cp azure-product-api-39.zip ~/muleapps
