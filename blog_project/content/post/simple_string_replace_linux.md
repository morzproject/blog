+++
date = "2013-06-24T05:06:48+10:00"
draft = false
title = "Simple String Replacement Tool in Linux"

+++
First install mysql client (`replace` utility is one of a tool in MySQL package).
{{< highlight shell >}}
apt-get install mysql-client
{{< /highlight >}}
<!--more-->
Example text in file1.txt:
{{< highlight text >}}
I like to drink apple juice.
{{< /highlight >}}

Replace `apple` with `orange`
{{< highlight text >}}
$ replace apple orange -- file1.txt
{{< /highlight >}}

output :
{{< highlight text >}}
I like to drink orange juice.
{{< /highlight >}}