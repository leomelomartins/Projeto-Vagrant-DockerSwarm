#!/bin/bash

cd containerServer
sudo docker swarm init --advertise-addr 192.168.50.2:2377 | sed 'd' > ../containerClient/token.sh
