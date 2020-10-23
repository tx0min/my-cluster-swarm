# Instala git
apt install -y git

# Instala docker
curl https://get.docker.com | sudo bash

mkdir -p /srv/docker

# Configurar NFS
echo 'instance-1:/srv/nfs /srv/docker nfs defaults,nfsvers=3 0 0' >> /etc/fstab
apt install -y nfs-kernel-server
echo '/srv/nfs 10.132.0.0/24(rw,no_root_squash,no_subtree_check)' >> /etc/exports
systemctl start nfs-kernel-server
mount -a

# Configura el cluster swarn
docker swarm init 
docker swarm join-token manager|grep join  > /srv/docker/join.sh
chmod +x !$

# bajo los yaml de creacion de los servicios
cd /srv/docker
# git clone https://github.com/kpeiruza/swarm-cluster-example
git clone https://github.com/tx0min/my-cluster-swarm/


# Creo las networks
docker network create proxy -d overlay
docker network create portainer_agent -d overlay


