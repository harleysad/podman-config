#!/bin/bash


podman stop $(podman ps -a -q) 
podman rm $(podman ps -a -q) 
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


# docker run -it debian sh 