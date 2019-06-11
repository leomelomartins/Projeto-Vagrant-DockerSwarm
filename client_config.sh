#!/bin/bash

#instalando o flask
sudo apt install -y python3 python3-pip
sudo pip3 install Flask

#dando join na master como um worker
cd Projeto-Vagrant-DockerSwarm/containerClient
chmod +x /vagrant/token.sh
bash /vagrant/token.sh

#Construindo imagem do Dockerfile do container client
sudo docker build -t client .
