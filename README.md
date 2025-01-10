# podman-config
Config podman for better use

sudo apt install 'podman*'

##Set for rootless

$ cat /etc/subgid

customer:165536:65536


cat /etc/subuid

customer:165536:65536

##Set for Storage

add or replace:

storage.conf      -> /usr/share/containers/storage.conf

## Set for Repos

registries.conf   -> /etc/containers/registries.conf

