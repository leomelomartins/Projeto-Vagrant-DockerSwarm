#!/bin/bash

cd containerClient
chmod +x token.sh
bash token.sh
sudo docker build -t client .
