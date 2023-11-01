# Random Commands

 ```kubectl run <podname> --image=radial/busyboxplus:curl -i --tty```
 The above is a command used for debugging or exploring the internal rest endpoints in k8s network.
 However, without the -t or --tty flag, you won’t have a terminal-like interface. This means that certain interactive features like line buffering(in I/O operations, data transfer occurs whenever there is a newline character(block buffering means transfer happens when the buffer is full)), signal passing (like CTRL+C), and terminal resizing might not work as expected

 ```kubectl get pods -o json > output.json```
 kubectl get pods -l app=grafana-agent

```kubectl edit pod grafana-agent-demo-m55dd```
```kubectl get pods -o json | jq -r '.items[] | select(.metadata.name | startswith("grafana-agent")) | .metadata.name' ``` -->list pod names r means raw-output that means string not to be converted to json encoded and you can use pods/pod/po

```kubectl -n <namespace> get pods -ojson | jq '.items[].status.containerStatuses | select(.[].ready == false) | .[].name'```  --> list pods that are not ready
```kubectl get pods -ojson | jq -r '.items[] | select(.status.containerStatuses[].ready == false) | {pod: .metadata.name, container: .status.containerStatuses[].name}'``` -->list pod names that are not ready
kubectl get pods --> --field-selector or --selector= or -l  for labels
kubectl get pods --field-selector=spec.nodeName=rdn-mp22mcf1
kubectl exec -it <pod-name> -c <container-name> -- /bin/sh -c "kill 1" --> second -c means read commands
## LOGS tools--> stern,kubetail,kail
 -f, -p, -c=, --since=30d,--tail=10,--timestamps,-l "app=grafana-agent",--field-selector,--all-containers=true
kubectl logs -f $(getpodname grafana-agent) --all-containers > output.txt
**kubectl logs -f deployment/grafana-demo  > output.txt **

kubectl rollout status deployment/<deployment-name>
kubectl api-versions
kubectl run --rm -it --restart=Never my-pod --image=mcr.microsoft.com/dotnet/samples:aspnetapp -- /bin/sh -c "command”