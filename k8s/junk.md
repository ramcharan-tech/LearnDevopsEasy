KUBECONFIG env variable: set KUBECONFIG=C:\Users\YourUserName\.kube\config

topologySpreadConstraints: This is a feature in Kubernetes that allows you to specify how pods should be spread across nodes based on certain rules or constraints1. This can help to achieve high availability and efficient resource utilization1. In your code:

maxSkew: 1: This describes the degree to which Pods may be unevenly distributed. It must be greater than zero1.
topologyKey: kubernetes.io/hostname: This is the key of a node label. Nodes with this key and identical value are considered to be in the same topology1.
whenUnsatisfiable: ScheduleAnyway: This tells the scheduler to schedule the pod even if the spread constraint is not satisfied, but the scheduler prioritizes honoring the skew to not make the cluster more imbalanced1.
labelSelector: Pods that match this label selector are counted and recognized as a group when spreading to satisfy the constraint1.
affinity: Affinities in Kubernetes are used to express pod scheduling constraints that can match characteristics of candidate Nodes and the Pods that are already running on those Nodes2. In your code:

podAntiAffinity: This is used to prevent the scheduler from placing certain pods together on the same node2.
requiredDuringSchedulingIgnoredDuringExecution: The scheduler cannot schedule the pod unless the condition is met2.
preferredDuringSchedulingIgnoredDuringExecution: The scheduler tries to enforce these conditions, but does not guarantee them2.
topologyKey: kubernetes.io/hostname and topologyKey: failure-domain.beta.kubernetes.io/zone: These are used to define on what levels (node or zone) the podAntiAffinity should work2.

In Kubernetes, topologyKey is a field used in pod affinity/anti-affinity and topology spread constraints to specify the domain for pod placement12. It represents the key of node labels12. If two nodes are labelled with this key and have identical values for that label, the scheduler treats both nodes as being in the same topology12.

For example, two common label options are topology.kubernetes.io/zone and kubernetes.io/hostname1. If topologyKey is set to topology.kubernetes.io/zone, pods will be scheduled in the same zone as a pod that matches the expression1. If it’s set to kubernetes.io/hostname, pods will be scheduled on the same hostname as a pod that matches the expression1.

In summary, topologyKey is used to determine how pods are spread across your cluster among different topologies like regions, zones, nodes, etc., helping to achieve high availability and efficient resource utilization

tolerantSpreadContraints and antiaffinity --> spread across the cluster
affintiy --> same node
