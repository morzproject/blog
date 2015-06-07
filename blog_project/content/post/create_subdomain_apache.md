+++
date = "2015-03-02T11:25:09+10:00"
draft = false
title = "create_subdomain_apache"

+++

Let’s say you have a domain mywebsite.com and you want to add a subdomain blog.mywebsite.com. Here’s how to do it.

Create an apache config file:

```
touch /etc/apache2/site-available/blog.mywebsite.com
vi /etc/apache2/site-available/blog.mywebsite.com
```

Insert this configuration:

```
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
```

Enable the new config

```
a2ensite blog.mywebsite.com
```

Put all files under /var/www/blog.mywebsite.com and done!

P/S : To remove a subdomain, run :

```
a2dissite blog.mywebsite.com
```