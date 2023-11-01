# REGEX JQ

1. ```kubectl -n <namespace> get pods -ojson | jq '.items[].status'```
2. kubectl get pods -o json | jq -r '.items[] | select(any(.metadata.labels[]; test("mimir-distributed-j[a-z]*"))) | .metadata.name'
kubectl get deployments -o name | grep 'ruler' | xargs -I {} kubectl describe {}  --> ubuntu
kubectl get deployments -o name | awk '/ruler/ ' -->AWK '/ruler/ {print $0}'
kubectl get pods grafana-agent-demo-m55dd -o jsonpath="{.spec['containers', 'ephemeralContainers'][*].name}"
kubectl get deployment <deployment-name> -o jsonpath="{.spec.template.spec['containers', 'initContainers'][*].name}"
