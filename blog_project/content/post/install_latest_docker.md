+++
date = "2015-03-02T11:26:55+10:00"
draft = false
title = "install_latest_docker"

+++

This is a quick and simple way to install latest Docker. You need to instal in 64 bit machine otherwise you will receive an error `E: Unable to locate package lxc-docker`

```
su root
wget -qO- https://get.docker.com/ | sh
```

For more information please browse to http://docs.docker.com/installation/ubuntulinux/