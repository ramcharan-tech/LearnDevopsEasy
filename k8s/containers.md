Low-level cruntimes(OCInitative specs)--> manages only containers. runc, crun, rkt
High Level cruntimes--> image management, network,storage,security and orchestration.docker,containerd,cri-o,mirantis
sandbozed/virtualized runtimes-->best isolation and security. gvisor,kata ,firecracker
kubernetes support different runtimes using CRI(interface).default uses containerd with runC
managing namespaces(limit what it can see) and cgroupd (limit resources) for container is a way of controlling resources and isolation
we can run multiple containers in one namespace/cgroup(controlgroup)
network namespace --net=container,usernamepsace --userns=host,--cgroup-parent
container image (immutable and is a template for creating containers, contains layers that represent the cahnges made on base image)vs container vs container runtime

Init containers(run before the main application,used for intiliatization tasks,configure prerequisets,fetch dependencies),side car containers((run alongside,extend the fucntionality of main app, proxying,synchronizing services,config reloader)),ephemeral containers(used to debug having seperate fs,shares same nw and process ns)