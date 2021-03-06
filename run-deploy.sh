#!/bin/bash

echo "External IP1"
read EXIP1 
echo "External IP2"
read EXIP2 
echo "External IP3"
read EXIP3 

export EXIP1 EXIP2 EXIP3

IP1=$(getent hosts instance-1 | awk '{print $1}')
IP2=$(getent hosts instance-2 | awk '{print $1}')
IP3=$(getent hosts instance-3 | awk '{print $1}')

export IP1 IP2 IP3

export REMOTE_MOUNT="/srv/docker/data"

cd /srv/docker/my-cluster-swarm
docker stack deploy -c traefik/stack.yaml traefik
docker stack deploy -c portainer/stack.yaml portainer
# docker stack deploy -c consul-cluster/stack.yaml consul-cluster
docker stack deploy -c comptador/stack.yaml comptador
