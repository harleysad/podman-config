## Config rootless for Podman

1.  ### **Config Repos**
    
    *   Clear or delete `/etc/containers/registries.conf.d/shortnames.conf`
    *   Edit `registries.conf` ( it will be moved to `/etc/containers/registries.conf` )
2.  ### Config Storage
    
    *   Edit `storage.conf`, several issues with access  and file system, put it at your home dir ( it will be moved to `/etc/containers/registries.conf` )
3.  ### Check gshadow
    
    *   `$ cat /etc/subgid`  => `your-user:165536:65536`
    *   `$cat /etc/subuid` => `your-user:165536:65536`
4.  ### Install
    
    *   `./install` ( it will move your files to right place )