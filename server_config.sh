#!/bin/bash

cd Projeto-Vagrant-DockerSwarm/containerServer

#iniciando o DockerSwarm
sudo docker swarm init --advertise-addr 192.168.50.2:2377 | sed 5!d > /vagrant/token/join.sh

#Construindo imagem do Dockerfile do container Server
sudo docker build -t server .

#Criação da rede
sudo docker network create -d overlay --subnet 10.0.10.0/24 ClusterNet

#Criação do serviço
sudo docker service create -d --name webserver --network ClusterNet --replicas 3 -p 5001:80 server
