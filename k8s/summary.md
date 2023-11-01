# Key concepts

1. The command field in Kubernetes corresponds to the EntryPoint field in Docker
the args field in Kubernetes corresponds to the Cmd field in Docker
For example : kubectl run busybox --image=busybox --restart=Never -o yaml --dry-run -- /bin/sh -c 'echo hello;sleep 3600'
If we don't specify parameter --command, then parameters after -- will be treated as arguments. Docker EntryPoint + kubectl arguments.
If you use --command then docker file k8s Command(Entrypoint) and  arguments(CMD)  will be overriden with the command specified in kubectl.
When you override the default Entrypoint and Cmd, these rules apply:

If you do not supply command or args for a Container, the defaults defined in the Docker image are used.

If you supply a command but no args for a Container, only the supplied command is used. The default EntryPoint and the default Cmd defined in the Docker image are ignored.

If you supply only args for a Container, the default Entrypoint defined in the Docker image is run with the args that you supplied.

If you supply a command and args, the default Entrypoint and the default Cmd defined in the Docker image are ignored. Your command is run with your args.

In multi-container pods, all containers share the same network namespace (communicate via localhost), IPC namespace (shared interprocess communication), and UTS namespace (same hostname)2. However, by default, the PID namespace is not shared, although Kubernetes provides options to enable process sharing between containers inside the pod using shareProcessNamespace option.

## Keywords
klog
stern,kubetail,kail