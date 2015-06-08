+++
date = "2015-03-02T11:24:38+10:00"
draft = false
title = "Remove Empty Directories Recursively in Linux"

+++

# Remove Empty Directories Recursively in Linux

{{< highlight shell >}}
find . -type d -empty -delete
{{< /highlight >}}