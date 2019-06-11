#!/bin/bash

cd Projeto-Vagrant-DockerSwarm/containerServer

#iniciando o DockerSwarm
sudo docker swarm init --advertise-addr 192.168.50.2:7946 | sed 5!d > /vagrant/token.sh

#Construindo imagem do Dockerfile do container Server
sudo docker build -t server .

#Criação da rede
sudo docker network create -d overlay --subnet 10.0.10.0/24 ClusterNet

#Criação do serviço
sudo docker service create -d --name webservice --network ClusterNet --replicas 2 -p 5001:80 server
