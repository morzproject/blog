+++
date = "2014-06-29T05:21:51+10:00"
draft = false
title = "Install latest Docker on Ubuntu 14.04"

+++
This is a quick and simple way to install latest Docker. You need to install in 64 bit machine otherwise you will receive an error `E: Unable to locate package lxc-docker`
{{< highlight shell >}}
su root
wget -qO- https://get.docker.com/ | sh
{{< /highlight >}}
<!--more-->
For more information please browse to http://docs.docker.com/installation/ubuntulinux/