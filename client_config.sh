#!/bin/bash
sudo apt install -y python3 python3-pip
pip3 install bottle docker
cd containerClient
chmod +x token.sh
bash token.sh
sudo docker build -t client .
