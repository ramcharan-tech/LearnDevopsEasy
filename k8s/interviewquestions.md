# Tricky questions

1. How does Kubernetes handle secrets and sensitive data? Where do the secrets stored in k8s?
2. difference between a Deployment and a StatefulSet?
3. How do you maintain zero downtime during maintenance or upgrades?
4. How do you perform a rolling update in Kubernetes?
5. Explain the concept of a Pod Disruption Budget (PDB).PDB is used to limit the number of pods that can be taken down simultaneously during voluntary disruptions, ensuring high availability of applications.
6. different types of services in Kubernetes? Kubernetes supports several types of services: ClusterIP (default, accessible only within the cluster), NodePort (exposes the service on each node’s IP at a static port), LoadBalancer (provisions an external load balancer), and ExternalName (maps the service to a DNS name)
7. How does Kubernetes handle network policies?
8. What is the role of the kube-proxy
9. How do you monitor and log Kubernetes clusters?
10. What is a Custom Resource Definition (CRD)?
11. How does Kubernetes handle persistent storage?
12. What is RBAC ?
How do you secure a Kubernetes cluster? Security measures include using RBAC (Role-Based Access Control), network policies, secrets management, enabling audit logging, and ensuring secure communication between components using TLS.
13. How does Kubernetes handle node failures? Kubernetes uses node controllers to detect node failures. If a node is unresponsive for a certain period, the node controller marks it as NotReady and reschedules the pods to other nodes.
14. What is the role of the kube-scheduler
15. How does k8s handle service discovery? DNS-based service discovery
16. concept of a Kubernetes Operator
17. Role of kubelet
