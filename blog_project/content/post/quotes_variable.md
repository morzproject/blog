+++
date = "2015-03-01T00:29:06+10:00"
draft = false
title = "Shell Script – The importance of adding quotes to variable"

+++

Example 1 :

{{< highlight shell >}}
#!/bin/sh

TITLE="The Magic Land"
if [ $TITLE == "The Magic Ocean" ]; then
   echo "OK"
fi
{{< /highlight >}}

If you run the above script, you will receive this error message :

```
root@ubuntu:~# ./example1.sh
 ./example1.sh: 4: [: The: unexpected operator
 root@ubuntu:~#
```

The reason is variable $TITLE automatically expands in the if section :

```
if [ The Magic Land == "The Magic Ocean" ]; then
```

The fix is easy, just enclose variable $TITLE in quotes

{{< highlight shell >}}
#!/bin/sh

TITLE="The Magic Land"
if [ "$TITLE" == "The Magic Ocean" ]; then
   echo "OK"
fi
{{< /highlight >}}