```docker images -a``` -->list intermediate images as well
```docker images -f "label=beta"``` --> list by filter
```docker rmi bfa912da76a7```
```docker image prune``` --> command to remove unused images inluding dangling ones (docker image prune -a -f --filter "creationTime < 1w") -f means force
```docker rmi -f debug:beta```
```docker build --pull --rm -f "docker\dockerfiles\Debug" -t debug:beta "docker\dockerfiles" --label beta``` --> --pull always pull new base images
--rm --> remove intermediate containers
Docker starts an intermediate container from the base image (or from the previous image layer for subsequent instructions).
Docker runs the Dockerfile instruction in this intermediate container.
Docker saves the state of this intermediate container as a new image layer.
Docker removes the intermediate container.
"docker\dockerfiles": This is the build context that Docker will use for the build. It’s typically the path to a directory that contains the Dockerfile.
**reposiory name must be lower case**
```docker image prune --force --filter='label=beta'```
docker run -it -rm nginx --> -rm to remove the container automatically after it exits

``` yaml
extra_hosts:
    - "host.docker.internal:host-gateway" 
```

This line is used to add entries to the container’s /etc/hosts file, allowing you to map hostnames to IP addresses.

In this case, host.docker.internal is a special DNS name that resolves to the internal IP address used by the host. This can be useful for connecting from a Docker container to a service running on the host machine.