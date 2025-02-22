#

## Difference: Headless Service vs. Normal Service

| Feature          | Normal Service       | Headless Service       |
|-----------------|---------------------|------------------------|
| **ClusterIP**    | Assigned            | None                   |
| **Load Balancing** | Kubernetes handles it | No automatic balancing |
| **DNS Resolution** | Returns single ClusterIP | Returns multiple Pod IPs |
| **Use Case**     | Stateless apps      | Stateful apps, databases |

## How Does it Work?

Instead of assigning a single IP address, Kubernetes registers the individual pod IPs in DNS records.
If you query the service (nslookup my-headless-service), it returns multiple pod IPs instead of one.

```yaml
apiVersion: v1
kind: Service
metadata:
  name: my-headless-service
spec:
  clusterIP: None  # <-- Makes it headless
  selector:
    app: my-app
  ports:
    - port: 80
      targetPort: 8080
```
