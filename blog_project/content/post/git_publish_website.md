+++
date = "2013-05-23T04:39:26+10:00"
draft = false
title = "Using Git to Publish Website"
+++

# Using Git to Publish Website

## Remote Server (production server)

Create an new empty bare git repository 
{{< highlight shell >}}
$ mkdir mywebsite.git
$ cd mywebsite.git
$ git init --bare
$ touch hooks/post-receive
{{< /highlight >}}

Insert and save the following value in the `hooks/post-receive` file:
{{< highlight shell >}}
#!/bin/bash

GIT_WORK_TREE=/var/www/mywebsite.com

export GIT_WORK_TREE
if [ ! -d $GIT_WORK_TREE ]; then
  mkdir -p $GIT_WORK_TREE
fi
git checkout -f
{{< /highlight >}}

## Local Machine (user machine)

cd to your git repository and run these commands(replace the user, ip and path values from your production server):
{{< highlight shell >}}
$ git remote add mywebsite ssh://mike@192.168.1.1:22/home/mike/mywebsite.git
$ git push mywebsite master
{{< /highlight >}}