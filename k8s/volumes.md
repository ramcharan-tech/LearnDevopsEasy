Factors: Accessmodes, AZ's, Storage systems
ReadWriteOnce: The volume can be mounted as read-write by a single node like EBS
ReadOnlyMany: The volume can be mounted read-only by many nodes1.
ReadWriteMany: The volume can be mounted as read-write by many nodes
However, in a “cloud provider” environment, where you use multiple Availability Zones in a Region, your Persistent Volume is typically only accessible within one Availability Zone,
 However, EBS also supports a feature called EBS Multi-Attach, which allows a volume to be concurrently attached to multiple EC2 instances within the same Availability Zone1. But it’s important to note that this feature is only supported by io1 and io2 block Express volumes, it does not provide concurrent write operations. Applications must manage concurrent write operations to prevent data inconsistencies.

 node(s) had volume node affinity conflict -> node affinity/selector conflict or nodes for pods and volumes are in different zones.

## issues
 https://github.com/kubernetes-sigs/aws-ebs-csi-driver/issues/1163

 ENI (Elastic Network Interface): An ENI is a virtual network card that you can attach to your EC2 instances1. It’s a logical networking component in a VPC that represents a virtual network card2. It can include attributes like a primary private IPv4 address from the IPv4 address range of your VPC, a primary IPv6 address from the IPv6 address range of your VPC, one or more security groups, and more2. Having more than one ENI connected to your instance allows it to communicate on two different subnets1.

CNI (Container Network Interface): CNI is a specification and a set of tools for writing plugins to configure network interfaces in Linux containers. It’s used by Kubernetes to set up networking when pods are created. When ENABLE_PREFIX_DELEGATION is set to true, VPC CNI allocates an IP address to a Pod from the prefix assigned to an ENI3.

As for why max EBS attachments are reaching the limit for a node, it’s because there’s a limit on the maximum number of Amazon EBS volumes that you can attach to an instance, and this limit depends on the instance type and instance size4. The limit is not shared with other device attachments, meaning you can attach any number of Amazon EBS volumes up to the volume attachment limit, regardless of the number of attached devices, such as NVMe instance store volumes and network interfaces4.

In addition, each ENI consumes the number of max EBS attachments you can have on a Node5. So if you have multiple ENIs attached to an instance, it could potentially limit the number of EBS volumes you can attach.

To manage these limitations, you might need to consider your instance types, how many ENIs you’re using, and how many EBS volumes you need to attach. You might also need to consider using different storage solutions or network setups depending on your specific use case.

topologySpreadConstraints(how pods should be spread across nodes based on certain rules or constraints) and affinity (podantiaffintiy) are for high availability and efficient resource utilization.