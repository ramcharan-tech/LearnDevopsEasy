# Commands to add sudo user and Docker Setup on Ubuntu

adduser gitlab-runner sudo

vi /etc/sudoers

## Add below line inside /etc/sudoers file and save

gitlab-runner ALL=(ALL) NOPASSWD:ALL

``` bash
apt-get -y update

apt-get -y install docker

apt-get -y install docker.io 
```
