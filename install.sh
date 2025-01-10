#!/bin/bash

#stop all containers if need
podman stop $(podman ps -a -q)
#remove all containers
podman rm $(podman ps -a -q)
#remove all images
podman rmi $(podman images -q)

#root 
sudo bash -c ' 
    podman stop $(podman ps -a -q) 
    podman rm $(podman ps -a -q) 
    podman rmi $(podman images -q) 
    cp storage.conf /usr/share/containers/storage.conf 
    cp registries.conf /etc/containers/registries.conf 
    systemctl restart podman 

 ' 

