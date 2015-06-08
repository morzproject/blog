+++
date = "2014-06-29T10:16:40+10:00"
draft = false
title = "Connect to VyprVPN using PPTP on Ubuntu Server"

+++
# Connect to VyprVPN using PPTP on Ubuntu Server

## 1. Configuration

Install pptp client
{{< highlight shell >}}
apt-get install pptp-linux
{{< /highlight >}}

Create a new config file. Let's put the name as jp1.vyprvpn:
{{< highlight shell >}}
vi /etc/ppp/peers/jp1.vyprvpn
{{< /highlight >}}

Insert below content and save. Replace EMAIL with your login to VyprVPN. In this example, I use Japan server for the remote location (`jp1.vpn.goldenfrog.com`). You may replace to any server from this list https://www.goldenfrog.com/support/vyprvpn/vpn-setup/linux/pptp
{{< highlight shell >}}
pty "pptp jp1.vpn.goldenfrog.com --nolaunchpppd"
lock
noauth
nobsdcomp
nodeflate
name EMAIL
remotename jp1.vyprvpn
ipparam jp1.vyprvpn
require-mppe-128
usepeerdns
defaultroute
persist
{{< /highlight >}}

Now edit /etc/ppp/chap-secrets file and insert your EMAIL and PASSWORD:
{{< highlight shell >}}
# Secrets for authentication using CHAP
# client server secret IP addresses
EMAIL jp1.vyprvpn PASSWORD *
{{< /highlight >}}

Create and insert below content to /etc/ppp/ip-up.local
{{< highlight shell >}}
#!/bin/bash
H=`ps aux | grep 'pppd pty' | grep -v grep | awk '{print $14}'`
DG=`route -n | grep UG | awk '{print $2}'`
DEV=`route -n | grep UG | awk '{print $8}'`
route add -host $H gw $DG dev $DEV
route del default $DEV
route add default dev ppp0
{{< /highlight >}}

Add execution permission to the file:
{{< highlight shell >}}
chmod +x /etc/ppp/ip-up.local
Run
{{< /highlight >}}

## 2. Run

Now, start and connect pppd client to remote server:
{{< highlight shell >}}
pon jp1.vyprvpn
{{< /highlight >}}

to stop type
{{< highlight shell >}}
poff jp1.vyprvpn
{{< /highlight >}}