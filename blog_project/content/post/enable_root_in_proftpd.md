+++
date = "2013-06-02T08:49:19+10:00"
draft = false
title = "Enable Login as Root in ProFTPD"

+++

# Enable Login as Root in ProFTPD

WARNING, login as root is always bad practise. This tutorial intended for special case and running from within development environment.

Open `proftpd.conf`
{{< highlight shell >}}
vi /etc/proftpd/proftpd.conf
{{< /highlight >}}

Insert this value at the end of file
{{< highlight apacheconf >}}
<Global>
RootLogin on
UseFtpUsers off
</Global>
{{< /highlight >}}

Finally, restart ProFTPD service
{{< highlight shell >}}
service proftpd restart
{{< /highlight >}}