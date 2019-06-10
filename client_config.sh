#!/bin/bash

#instalando o flask
sudo apt install -y python3
sudo apt install -y python3-pip
sudo pip install Flask

cd Projeto-Vagrant-DockerSwarm/containerClient
chmod +x /vagrant/token/join.sh
bash /vagrant/token/join.sh
sudo docker build -t client .
