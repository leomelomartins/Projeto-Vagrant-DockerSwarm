#!/bin/bash

cd Projeto-Vagrant-DockerSwarm/containerClient
chmod +x /vagrant/containerClient/token.sh
bash /vagrant/containerClient/token.sh
sudo docker build -t client .
