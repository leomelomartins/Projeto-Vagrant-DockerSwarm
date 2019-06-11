#!/bin/bash

#instalando o flask
sudo apt install -y python3
sudo apt install -y python3-pip
sudo pip3 install Flask

cd Projeto-Vagrant-DockerSwarm/containerClient
chmod +x /vagrant/token.sh
bash /vagrant/token.sh
sudo docker build -t client .
