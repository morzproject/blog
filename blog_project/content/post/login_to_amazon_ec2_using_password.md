+++
date = "2015-03-02T11:26:38+10:00"
draft = false
title = "Login to Amazon EC2 using password in Ubuntu"

+++

# Login to Amazon EC2 using password in Ubuntu

Open /etc/ssh/sshd_config and update this value:
{{< highlight shell >}}
PasswordAuthentication yes
{{< /highlight >}}

Restart ssh service:
{{< highlight shell >}}
service ssh restart
{{< /highlight >}}