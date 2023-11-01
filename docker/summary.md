# Key Concepts

1. docker cli --> containerd (pulls images,networking and storage) --> OCI spec --> runC (runs containers using libcontainer) --> Containers
2. User
  |
Docker CLI
  |
Docker API
  |
Docker Daemon (dockerd)(high level UX)
  |
Containerd (manages complete container lifecycle)(low-level)
  |------------------|
  |                  |
Containerd-shim     RunC (exists after creation to stop long running processes there on shim manages)
  |                  |
  |------------------|
  |
Containers

1.  `dockerd` vs `containerd` 
- **Docker Daemon (dockerd)**: The Docker daemon is the highest level component and the Docker daemon itself. It provides all the nice UX features of Docker¹.

- **Containerd**: Containerd is also a daemon, listening on a Unix socket, and exposes gRPC endpoints. It handles all the low-level container management tasks, storage, image distribution, network attachment, etc¹. 

The reason for having both `dockerd` and `containerd` lies in the separation of concerns and the need for modularity. While `dockerd` provides high-level features like building images, running containers, etc., `containerd` is responsible for lower-level container management tasks like supervising container processes, managing storage and network interfaces, etc

This separation allows other systems like Kubernetes to use `containerd` directly without needing the full Docker stack. It also allows Docker to potentially support other container runtimes in the future²³⁴.

In summary, while `dockerd` provides the user-friendly features of Docker, `containerd` provides the robust, lower-level container management functionality. Both are essential parts of the Docker ecosystem

1.  CMD vs ENTRYPOINT
   docker run -i -t ubuntu <cmd> , where the parameter for the entrpoint(executable) is <cmd> and default entrypoint which is /bin/sh -c
   --No entrypoint then CMD ["exec_cmd", "p1_cmd"] (exec form recommended) gives **exec_cmd p1_cmd**
                   then CMD exec_cmd p1_cmd (shell form error prone) gives **/bin/sh -c exec_cmd p1_cmd**
  -- ENTRYPOINT exec_entry p1_entry  then **/bin/sh -c exec_entry p1_entry**  no matter what
  -- ENTRYPOINT ["exec_entry", "p1_entry"] then CMD ["p1_cmd", "p2_cmd"] gives **exec_entry p1_entry p1_cmd p2_cmd**
  -- ENTRYPOINT ["exec_entry", "p1_entry"] then CMD p1_cmd, p2_cmd gives **exec_entry p1_entry /bin/sh -c p1_cmd p2_cmd**

