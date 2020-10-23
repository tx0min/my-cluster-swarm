# swarm-cluster-example
Txomin

Crear 3 instancias en Google Cloud
https://console.cloud.google.com/compute/instances?project=modular-gantry-293407&instancessize=50

instance-1 , 2 y 3



**Run on master (instance-1)**

```
run-master.sh
```
**Run on all nodes**
```
run-worker.sh
```

**Run deploy on all nodes**
Deploys portainer, traefik and counter 
```
run-deploy.sh
```
