# swarm-cluster-example
Txomin

Crear 3 instancias en Google Cloud (*instance-1 , 2 y 3)

https://console.cloud.google.com/compute/instances?project=modular-gantry-293407&instancessize=50


```
sudo su -
```

Install git on the 3 nodes
```
apt install -y git
```

On master:
```
git clone https://github.com/tx0min/my-cluster-swarm
cd my-cluster-swarm

```

**Run on master (instance-1)**

```
run-master.sh
```
**Run on workers only**
```
run-worker.sh
```



Test swarm


**Run deploy on all nodes**
Deploys portainer, traefik and counter 
```
run-deploy.sh
```
