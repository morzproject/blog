+++
date = "2013-08-27T06:25:13+10:00"
draft = false
title = "Create a Subdomain in Apache2"

+++

# Create a Subdomain in Apache2
Let's say you have a domain mywebsite.com and you want to add a subdomain blog.mywebsite.com. Here's how to do it.

Create an apache config file:
{{< highlight shell-session >}}
touch /etc/apache2/site-available/blog.mywebsite.com
vi /etc/apache2/site-available/blog.mywebsite.com
{{< /highlight >}}

Insert this configuration:
{{< highlight apacheconf >}}
<VirtualHost *:80>
	ServerAdmin webmaster@localhost

	DocumentRoot /var/www/blog.mywebsite.com
	<Directory />
		Options FollowSymLinks
		AllowOverride All
	</Directory>

	ErrorLog ${APACHE_LOG_DIR}/error.log

	# Possible values include: debug, info, notice, warn, error, crit,
	# alert, emerg.
	LogLevel warn

	CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
{{< /highlight >}}

Enable the new config
{{< highlight shell-session >}}
a2ensite blog.mywebsite.com
{{< /highlight >}}

Put all files under /var/www/blog.mywebsite.com and done!

P/S : To remove a subdomain, run :
{{< highlight shell-session >}}
a2dissite blog.mywebsite.com
{{< /highlight >}}