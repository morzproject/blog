+++
date = "2013-05-31T08:30:57+10:00"
draft = false
title = "How to Protect a Directory with Password Using .htaccess in Apache2"

+++
Create a new `.htaccess` file
{{< highlight shell >}}
cd /var/www/mywebsite.com/secret
touch .htaccess
{{< /highlight >}}
<!--more-->
Insert this value in the `.htaccess` file
{{< highlight shell >}}
AuthType Basic
AuthName "Restricted Files"
AuthUserFile /home/mike/.htpasswd
Require valid-user
{{< /highlight >}}

Create a new password file
{{< highlight shell >}}
htpasswd -c /home/mike/.htpasswd mike
{{< /highlight >}}

Lastly, restart apache2
{{< highlight shell >}}
service apache2 restart
{{< /highlight >}}