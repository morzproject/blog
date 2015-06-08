+++
date = "2015-03-01T00:29:06+10:00"
draft = false
title = "Shell Script – The Importance of Adding Quotes to Variable"

+++

# Shell Script – The Importance of Adding Quotes to Variable

Example 1 :
{{< highlight shell >}}
#!/bin/sh

TITLE="The Magic Land"
if [ $TITLE == "The Magic Ocean" ]; then
   echo "OK"
fi
{{< /highlight >}}

If you run the above script, you will receive this error message :
{{< highlight shell-session >}}
root@ubuntu:~# ./example1.sh
 ./example1.sh: 4: [: The: unexpected operator
 root@ubuntu:~#
{{< /highlight >}}

The reason is variable `$TITLE` automatically expands in the `if` section :
{{< highlight shell >}}
if [ The Magic Land == "The Magic Ocean" ]; then
{{< /highlight >}}

The fix is easy, just enclose variable `$TITLE` in quotes
{{< highlight shell >}}
#!/bin/sh

TITLE="The Magic Land"
if [ "$TITLE" == "The Magic Ocean" ]; then
   echo "OK"
fi
{{< /highlight >}}