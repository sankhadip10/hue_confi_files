# Configuration Extraction Inventory
**Extraction Date:** Sun Jun  1 15:25:24 IST 2025
**Cluster Context:** minikube

## Directory Structure
```
extracted-configs/
├── configmaps/          # All ConfigMaps (YAML format)
├── deployments/         # All Deployments (YAML format)
├── services/            # All Services (YAML format)
├── secrets/             # Any secrets found
├── yaml-manifests/      # Individual pod configurations
├── raw-configs/         # Raw config files extracted from pods
├── logs/                # Recent logs for debugging
└── INVENTORY.md         # This file
```

## Pods Status at Extraction Time
NAME                              READY   STATUS             RESTARTS        AGE     IP             NODE       NOMINATED NODE   READINESS GATES
datanode-5b89d87698-nsdqv         1/1     Running            1 (3h36m ago)   23h     10.244.0.158   minikube   <none>           <none>
datanode-5f6d6786b-ttnmc          0/1     ErrImagePull       0               3h24m   10.244.0.161   minikube   <none>           <none>
hive-client                       1/1     Running            1 (3h36m ago)   14h     10.244.0.154   minikube   <none>           <none>
hive-metastore-7f9f5b7c8f-4zt6s   0/1     Error              25 (6m6s ago)   16h     10.244.0.159   minikube   <none>           <none>
hive-schema-init-kkpsn            0/1     Completed          0               17h     <none>         minikube   <none>           <none>
hiveserver2-58d975488-zjxmn       1/1     Running            23 (28m ago)    23h     10.244.0.149   minikube   <none>           <none>
hue-6c9f67d454-d5z48              2/2     Running            2 (3h36m ago)   22h     10.244.0.157   minikube   <none>           <none>
hue-6c9f67d454-kkhml              2/2     Running            2 (3h36m ago)   22h     10.244.0.150   minikube   <none>           <none>
namenode-69994dd646-lf7gw         1/1     Running            1 (3h36m ago)   21h     10.244.0.152   minikube   <none>           <none>
namenode-7dbfdc8b68-8cs9h         0/1     ImagePullBackOff   0               3h24m   10.244.0.160   minikube   <none>           <none>
postgres-hue-64795fd76c-glh85     1/1     Running            1 (3h36m ago)   26h     10.244.0.147   minikube   <none>           <none>
spark-master-555c884564-md278     1/1     Running            1 (3h36m ago)   21h     10.244.0.156   minikube   <none>           <none>

## Services Status
NAME                     TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)               AGE
datanode                 ClusterIP      10.98.145.126    <none>        9864/TCP              23h
hive-metastore           ClusterIP      10.105.44.152    <none>        9083/TCP              23h
hive-metastore-fixed     ClusterIP      10.106.102.155   <none>        9083/TCP              23h
hive-metastore-service   ClusterIP      10.100.124.72    <none>        9083/TCP              23h
hiveserver2              ClusterIP      10.111.23.215    <none>        10000/TCP,10002/TCP   23h
hiveserver2-service      ClusterIP      10.111.0.16      <none>        10000/TCP,10002/TCP   23h
hue                      NodePort       10.101.110.157   <none>        8888:31299/TCP        27h
hue-balancer             NodePort       10.98.192.123    <none>        80:30088/TCP          27h
hue-complete             LoadBalancer   10.98.32.51      <pending>     8888:31619/TCP        23h
kubernetes               ClusterIP      10.96.0.1        <none>        443/TCP               3d21h
livy-service             ClusterIP      10.105.242.141   <none>        8998/TCP              23h
namenode                 ClusterIP      10.98.84.203     <none>        8020/TCP,9870/TCP     23h
namenode-service         ClusterIP      10.99.254.92     <none>        9000/TCP,9870/TCP     23h
postgres-hue             ClusterIP      10.104.75.109    <none>        5432/TCP              26h
spark-master             ClusterIP      10.109.38.71     <none>        8080/TCP,7077/TCP     23h
spark-master-service     ClusterIP      10.101.207.233   <none>        7077/TCP,8080/TCP     23h

## ConfigMaps Found
total 1360
drwxr-xr-x 1 sankh 197609       0 Jun  1 15:25 .
drwxr-xr-x 1 sankh 197609       0 Jun  1 15:25 ..
-rw-r--r-- 1 sankh 197609 1358836 Jun  1 15:25 all-configmaps.yaml
-rw-r--r-- 1 sankh 197609    1171 Jun  1 15:25 hadoop-config.yaml
-rw-r--r-- 1 sankh 197609     797 Jun  1 15:25 hive-config.yaml
-rw-r--r-- 1 sankh 197609    3066 Jun  1 15:25 hive-site-config.yaml
-rw-r--r-- 1 sankh 197609    2215 Jun  1 15:25 hue-config-complete.yaml
-rw-r--r-- 1 sankh 197609     866 Jun  1 15:25 hue-config-extra.yaml
-rw-r--r-- 1 sankh 197609    2330 Jun  1 15:25 hue-config.yaml

## Raw Configuration Files
total 14
drwxr-xr-x 1 sankh 197609    0 Jun  1 15:25 .
drwxr-xr-x 1 sankh 197609    0 Jun  1 15:25 ..
-rw-r--r-- 1 sankh 197609  444 Jun  1 15:25 hadoop-config-data.json
-rw-r--r-- 1 sankh 197609  557 Jun  1 15:25 hive-config-data.json
-rw-r--r-- 1 sankh 197609 1044 Jun  1 15:25 hue-config-data.json
