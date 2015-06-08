+++
date = "2013-06-16T05:45:05+10:00"
draft = false
title = "Add and Remove User From a Group in Linux"
description = "A simple guide to add and remove user from a group in Linux. The only command needed is gpasswd."
+++

# Add and Remove User From a Group in Linux

Add existing user mike to group www-data
{{< highlight shell >}}
gpasswd -a mike www-data
{{< /highlight >}}

Remove user mike from group www-data
{{< highlight shell >}}
gpasswd -d mike www-data
{{< /highlight >}}