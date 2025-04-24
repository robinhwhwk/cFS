#!/bin/bash
git clone https://github.com/robinhwhwk/cFS.git
sudo apt-get update
sudo apt install docker.io
cd cFS/client/cFS
sudo docker build -t client .
cd ../../server/cFS
sudo docker build -t server .



