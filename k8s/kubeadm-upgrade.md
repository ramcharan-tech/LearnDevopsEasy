# Upgrading a Kubernetes cluster from version 1.30 to 1.31 using kubeadm

We’ll use the following node names and IPs:

Control Plane Node: control-plane-node (IP: 192.168.1.10)
Worker Node 1: worker-node-1 (IP: 192.168.1.11)
Worker Node 2: worker-node-2 (IP: 192.168.1.12)

## Control Plane Node Upgrade

1. Cordon the Control Plane Node:
```kubectl cordon control-plane-node```

1. Drain the Control Plane Node:
```kubectl drain control-plane-node --ignore-daemonsets --delete-local-data```

1. Upgrade kubeadm:
```sudo apt-get update && sudo apt-get install -y kubeadm=1.31.0-00```

1. Plan the Upgrade:
```sudo kubeadm upgrade plan```

1. Apply the Upgrade:
```sudo kubeadm upgrade apply v1.31.0```

1. Upgrade kubelet and kubectl:

   ``` bash
   sudo apt-get update && sudo apt-get install -y kubelet=1.31.0-00 kubectl=1.31.0-00
   sudo systemctl daemon-reload
   sudo systemctl restart kubelet
   ```

1. Uncordon the Control Plane Node:
kubectl uncordon control-plane-node

## Worker Nodes Upgrade

### Worker Node 1

1. Cordon the Worker Node:
```kubectl cordon worker-node-1```

1. Drain the Worker Node:
```kubectl drain worker-node-1 --ignore-daemonsets --delete-local-data```

1. Upgrade kubeadm:
```sudo apt-get update && sudo apt-get install -y kubeadm=1.31.0-00```

1. Upgrade the Node:
```sudo kubeadm upgrade node```

1. Upgrade kubelet and kubectl:

   ``` bash
   sudo apt-get update && sudo apt-get install -y kubelet=1.31.0-00 kubectl=1.31.0-00
   sudo systemctl daemon-reload
   sudo systemctl restart kubelet
   ```

1. Uncordon the Worker Node:
kubectl uncordon worker-node-1

### Worker Node 2

Cordon the Worker Node:
```kubectl cordon worker-node-2```

Drain the Worker Node:
```kubectl drain worker-node-2 --ignore-daemonsets --delete-local-data```

Upgrade kubeadm:
```sudo apt-get update && sudo apt-get install -y kubeadm=1.31.0-00```

Upgrade the Node:
```sudo kubeadm upgrade node```

Upgrade kubelet and kubectl:

   ``` bash
   sudo apt-get update && sudo apt-get install -y kubelet=1.31.0-00 kubectl=1.31.0-00
   sudo systemctl daemon-reload
   sudo systemctl restart kubelet
   ```

Uncordon the Worker Node:
```kubectl uncordon worker-node-2```