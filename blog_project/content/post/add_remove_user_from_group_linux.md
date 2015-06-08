+++
date = "2015-03-02T11:21:59+10:00"
draft = false
title = "Add and Remove User From a Group in Linux"

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