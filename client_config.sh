#!/bin/bash

#instalando o flask
sudo apt -y install python3-pip
sudo apt -y install python-pip
sudo pip install httplib2
sudo pip install Flask

cd Projeto-Vagrant-DockerSwarm/containerClient
chmod +x /vagrant/token.sh
bash /vagrant/token.sh
sudo docker build -t client .
