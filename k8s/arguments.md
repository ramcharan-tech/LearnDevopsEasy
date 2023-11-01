apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
  - name: my-container
    image: my-image
    command: ["/bin/bash"]
    args: ["-c", "echo Hello, World!"]

In this example, the args field specifies the arguments that should be passed to the /bin/bash command when the container starts

Please note that if you specify both command and args, the command field overrides the default entrypoint of the container image, and the args field overrides the default command of the container image.