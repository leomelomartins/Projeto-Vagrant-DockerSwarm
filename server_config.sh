#!/bin/bash

cd Projeto-Vagrant-DockerSwarm/containerServer
sudo docker swarm init --advertise-addr 192.168.50.2:2377 | sed 'd' > /../containerClient/token.sh
sudo docker build -t server .
sudo docker network create -d overlay --subnet 10.0.10.0/24 ClusterNet
sudo docker service create -d server_on --network ClusterNet --replicas 3 -p 5000:80 server
