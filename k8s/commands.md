# Install tools

kubectl, git, krew(neat,resource-capacity,df-pv,explore,blame,view-secret), aws, rancher-desktop/minikube, jq

## LOGS tools--> stern,kubetail,kail

 -f, -p, -c=, --since=30d,--tail=10,--timestamps,-l "app=grafana-agent",--field-selector,--all-containers=true
kubectl logs -f $(getpodname grafana-agent) --all-containers > output.txt
**kubectl logs -f deployment/grafana-demo  > output.txt**

kubectl rollout status deployment/<deployment-name>
kubectl api-versions
kubectl run --rm -it --restart=Never my-pod --image=mcr.microsoft.com/dotnet/samples:aspnetapp -- /bin/sh -c "command”

## EVENTS

kubectl events [(-o|--output=)json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file] [--for TYPE/NAME] [--watch] [--types=Normal,Warning]

## TROUBLESHOOT ISSUES

kubectl logs <ingress-controller-pod-name> -n <namespace>
kubectl get endpoints <service-name> -n <namespace>
kubectl describe service/ingress/pod/deployment/sts <service-name> -n <namespace>

## GET RESOURCE LIMITS

kubectl get deployments  -o custom-columns='NAME:.metadata.name,CONTAINER:.spec.template.spec.containers[*].name,CPU_REQUESTS:.spec.template.spec.containers[*].resources.requests.cpu,CPU_LIMITS:.spec.template.spec.containers[*].resources.limits.cpu,MEMORY_REQUESTS:.spec.template.spec.containers[*].resources.requests.memory,MEMORY_LIMITS:.spec.template.spec.containers[*].resources.limits.memory'

## Random Commands

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
