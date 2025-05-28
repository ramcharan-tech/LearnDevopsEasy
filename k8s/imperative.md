# Imperative

## Namepsaces

``` bash
k get namespaces
k create namesapce <name>
k get all --all-namespaces # list of all resources in cluster (except ingress,pvc)
```

## pods

``` bash
k run ngx --image=nginx --expose=8081 --port=80 --restart=Never --env="AWS_ENV=dev" --labels="app=nginx-app" --dry-run=client -it -- bin/bash
kubectl get pods -o wide --sort-by=.metadata.name
kubectl exec -it <pod-name> -c <container-name> -- /bin/bash (-it or --stdin --ty) # same as attach,but with new shell process 
kubectl cp <local-file> <pod-name>:/tmp/<remote-file>
kubectl apply -f <resource.yaml>   
kubectl diff -f <resource.yaml> # Show differences before applying changes
```

## deployment

``` bash
kubectl create/delete deployment nginx --image=nginx --replicas=3
kubectl set image deployment/<deployment-name> <container-name>=<image>
kubectl scale deployment <deployment-name> --replicas=<num>
kubectl rollout restart/status/history/undo deployment <deployment-name>  
```

## service/cm/secrets

```bash
kubectl expose deployment/pod <deployment-name> --type=<type> --port=<port>
kubectl create configmap <config-name> --from-literal=key=value / --from-file=<file-path>
kubectl create secret generic <secret-name> --from-file=<file-path>
```

1. cannot create pv using imperative commands, but we can delete

## nodes

k cordon/drain/uncordon <node-name>
kubectl cordon <node-name> → Mark Node as Unschedulable. This command prevents new pods from being scheduled on the node. Existing pods keep running, but new ones won’t be scheduled on this node. SchedulingDisabled status is added.
kubectl drain worker-node-1 --ignore-daemonsets --delete-emptydir-data

## RBAC

k get roles/rolebindings
k create role <name> --verb=get,list --resource=pods
