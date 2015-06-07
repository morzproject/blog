+++
date = "2015-03-02T11:26:38+10:00"
draft = false
title = "login_to_amazon_ec2_using_password"

+++

Open /etc/ssh/sshd_config and update this value:

```
PasswordAuthentication yes
```

Restart ssh service:

```
service ssh restart
```

Done.