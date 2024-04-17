# TROUBLESHOOTING

1. helm template grafana/enterprise-logs --version=2.5.0 -f .\loki.values.yaml > loki.test.yaml
2. helm install mimirtest -n mimir-test grafana/mimir-distributed -f .\mimir.values.yaml --dry-run --debug > output2.yaml
3. helm lint ./path/to/chart
4. helm inspect values ./path/to/chart

# ARCHIVE

``` helm
helm -n mimir-test install mimir grafana/mimir-distributed -f values.yaml

helm show values grafana/mimir-distributed | Out-File -FilePath "C:\Users\RA_Charan.Kette\Archive\test.txt"

helm -n mimir-test upgrade mimir grafana/mimir-distributed -f values.yaml

helm --namespace=grafana-loki template loki-sandbox grafana/enterprise-logs -f .\loki.values.yaml --debug > abc.yaml

helm ls -a

helm history <release> --namespace <namespace>

helm rollback <release> <revision> --namespace <namespace>

helm repo update

helm search repo  promtail
```
