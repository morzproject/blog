+++
date = "2013-05-24T04:54:16+10:00"
draft = false
title = "MySQL CLI Without Password"

+++
Usually this is how to connect to MySQL Server using MySQL client:
{{< highlight shell >}}
$ mysql -u mike -p123
{{< /highlight >}}
<!--more-->
To connect without needed to insert password(and username) every time, we can pre-configure all credentials in `.my.cnf` file
{{< highlight shell >}}
$ cd ~
$ touch .my.cnf
$ vi .my.cnf
{{< /highlight >}}

... and insert and save the following value:
{{< highlight ini >}}
[client]
user=mike
password=123
{{< /highlight >}}

Now you can connect to MySQL Server by simply type `mysql`:
{{< highlight shell >}}
$ mysql
{{< /highlight >}}