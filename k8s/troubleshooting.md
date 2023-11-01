# Workloads Won’t Run

kubectl get events --field-selector type=Warning --all-namespaces
kubectl get nodes -o wide --label-columns topology.kubernetes.io/zone
kubectl resource-capacity --pods --util --sort cpu.util
kubectl get all --show-labels
kubectl lineage pod ${POD}
kail -l ${LABEL}

## CANNOT ACCESS WORKLOADS

```kubectl get service -o wide``` \
```kubectl get endpointslices -o wide``` \
```kubectl port-forward deploy $DEPLOYMENT $LOCAL_PORT:$POD_PORT``` 

### Debug specific pods


kubectl debug -it --image=debug:betav2 $(getpodname grafana-agent)
kubectl label pod $POD app-
kubectl blame pod
https://kubernetes.io/docs/tasks/debug/debug-application/debug-running-pod/