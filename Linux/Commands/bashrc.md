source <(kubectl completion bash)
complete -o default -F __start_kubectl k
export AWS_PROFILE=dev
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export KUBE_EDITOR="code --wait"
export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
alias ldev="aws sso login --profile dev"
alias lshared="aws sso login --profile shared"
alias kud='kubectl config use-context arn:aws:eks:us-east-1:622268126582:cluster/observability-platform-dev'
alias kun='kubectl config use-context arn:aws:eks:us-east-1:402078927917:cluster/observability-nonprod'
alias kup='kubectl config use-context arn:aws:eks:us-east-1:402078927917:cluster/observability-prod'
alias kut='kubectl config use-context arn:aws:eks:us-east-1:402078927917:cluster/observability-platform-test'
alias k='kubectl'
alias kugl='kubectl config set-context --current --namespace=grafana-loki'
alias kugm='kubectl config set-context --current --namespace=grafana-mimir'
alias kugt='kubectl config set-context --current --namespace=grafana-tempo'
alias kuga='kubectl config set-context --current --namespace=grafana-agent'
alias kug='kubectl config set-context --current --namespace=grafana'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods --all-namespaces'
alias kgs='kubectl get svc'
alias kgn='kubectl get nodes'
alias kdp='kubectl describe pod'
alias kdn='kubectl describe node'
alias ka='kubectl apply -f'
alias kdelp='kubectl delete pod'
alias kl='kubectl logs -f'
alias kexec='kubectl exec -it'
alias kgd='kubectl get deployments'
alias ksd='kubectl scale deployment'
alias kpf='kubectl port-forward'
alias kgx='kubectl get secrets'
alias kgi='kubectl get ingress'
alias kgcm='kubectl get configmaps'
alias kgns='kubectl get namespaces'
alias kgss='kubectl get statefulsets'
alias kes='kubectl edit sts'
alias ke='kubectl edit'
alias kex='kubectl edit secret'
alias kec='kubectl edit configmap'
alias ked='kubectl edit deployment'
alias krr='kubectl rollout restart'
alias knl='kubectl -n grafana-loki'
alias knm='kubectl -n grafana-mimir'
alias knga='kubectl -n grafana-agent'
alias kng='kubectl -n grafana'
alias knt='kubectl -n grafana-tempo'
alias kcc='kubectl config current-context'
alias kea='kubectl events --all-namespaces --types=warning --watch'
alias kr='kubectl get -o custom-columns="NAME:.metadata.name,CONTAINER:.spec.template.spec.containers[*].name,CPU_REQUESTS:.spec.template.spec.containers[*].resources.requests.cpu,CPU_LIMITS:.spec.template.spec.containers[*].resources.limits.cpu,MEMORY_REQUESTS:.spec.template.spec.containers[*].resources.requests.memory,MEMORY_LIMITS:.spec.template.spec.containers[*].resources.limits.memory"'
alias kwp="kubectl get pods --all-namespaces -o json | jq '.items[] | select(.status.containerStatuses[].state.waiting != null) | {name: .metadata.name, namespace: .metadata.namespace, state: .status.containerStatuses[].state}'"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

complete -C /usr/local/bin/terragrunt terragrunt