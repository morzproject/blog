+++
date = "2013-06-14T17:34:35+10:00"
draft = false
title = "Clone a Git Repository Using Private Key on Ubuntu"
description = "A simple guide on how to clone a git repository using private key on Ubuntu (or any Linux distro)."
+++

# Clone a Git Repository Using Private Key in Ubuntu

Have you ever received this error message?
{{< highlight shell >}}
$ git clone git@bitbucket.org:mike/web-app.git
Cloning into 'web-app'...
Permission denied (publickey).
fatal: The remote end hung up unexpectedly
{{< /highlight >}}

Most likely you need to add private key to the ssh authentication agent. Here is how to do it.

## Method #1 (Temporary, need to add for every restart)

Make sure ssh-agent is running
{{< highlight shell >}}
$ ps -e | grep sh-agent
 1525 ?        00:00:00 ssh-agent
{{< /highlight >}}
 
If not, then start it by using the following command:
{{< highlight shell >}}
$ ssh-agent /bin/bash
{{< /highlight >}}

Add private key to ssh-agent .
{{< highlight shell >}}
$ ssh-add /home/mike/id_rsa.key
{{< /highlight >}}

Check if the private key is successfully added
{{< highlight shell >}}
$ ssh-add -l
2048 34:a1:98:38:1b:d5:12:98:19:42:b9:8b:14:19:17:63 id_rsa (RSA)
{{< /highlight >}}

Clone your git repository
{{< highlight shell >}}
$ git clone git@github.com:mike/macosx-app.git
{{< /highlight >}}

## Method #2 (Permanently)

Create a config file in .ssh folder
{{< highlight shell >}}
$ cd /home/mike/.ssh
$ touch config
{{< /highlight >}}

Add this value to the config file and save.
{{< highlight shell >}}
IdentityFile /home/mike/id_rsa.key
{{< /highlight >}}

Clone your git repository
{{< highlight shell >}}
$ git clone git@github.com:mike/macosx-app.git
{{< /highlight >}}