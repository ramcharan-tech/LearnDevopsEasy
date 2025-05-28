# CKA 100 Questions

- 1.How do you check the Kubernetes API server status?
k get componentstatuses
kubectl describe pod -n kube-system kube-apiserver-<master-node-name>
- 2.What command initializes a Kubernetes control plane using kubeadm?
 kubeadm init --pod-network-cidr=192.168.0.0/16  The --pod-network-cidr flag is required for some network plugins (like Calico).
- 3. How do you add a worker node to an existing cluster?
  kubeadm join <master-ip>:6443 --token <token> --discovery-token-ca-cert-hash sha256:<hash>
   Where to get the token?
    The kubeadm init output provides this command.
    If you lost it, generate a new one:
    kubeadm token create --print-join-command
-  4. What is the default network plugin used by kubeadm?
 kubeadm does not install a network plugin by default. kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml , kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

-  What command lists all available Kubernetes contexts? kubectl config get-contexts
- How do you change the default Kubernetes context?
- What file stores kubeadm configurations for the control plane? kubectl config use-context <context-name>
- What file stores kubeadm configurations for the control plane? /etc/kubernetes/kubeadm-config.yaml
Other important config files:
/etc/kubernetes/admin.conf → Admin credentials
/etc/kubernetes/manifests/ → Static pod definitions for control plane
- 9. How do you remove a node from the cluster properly?
Step 1: Drain the Node (Move Workloads Off the Node)
kubectl drain <node-name> --ignore-daemonsets --delete-emptydir-data
Step 2: Remove the Node from the Cluster
kubectl delete node <node-name>
Step 3: Reset Kubeadm on the Node (Run on the Node Being Removed)
kubeadm reset
Step 4: (Optional) Remove Kubernetes Packages
sudo apt-get remove -y kubeadm kubectl kubelet
sudo rm -rf ~/.kube /etc/kubernetes
- What command upgrades a Kubernetes cluster to a specific version?
sudo apt-get install -y kubeadm=1.30.0-00
sudo kubeadm upgrade apply v1.30.0
sudo apt-get install -y kubelet=1.30.0-00 kubectl=1.30.0-00
sudo systemctl restart kubelet
kubectl get nodes
