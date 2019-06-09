#!/bin/bash

cd Projeto-Vagrant-DockerSwarm/containerClient
chmod +x /vagrant/token.sh
bash /vagrant/token.sh
sudo docker build -t client .
