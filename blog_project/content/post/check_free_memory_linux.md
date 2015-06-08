+++
date = "2013-06-06T06:07:58+10:00"
draft = false
title = "Check Free Memory in Linux"
description = "Did you ever wonder why your linux machine is using too much RAM? This article will explain on how to check free memory in Linux."
+++

# Check Free Memory in Linux

Run free `-m` (the `-m` means display the amount of memory in megabytes.)
{{< highlight java >}}
$ free -m
             total       used       free     shared    buffers     cached
Mem:           495        482         13          0         26        362
-/+ buffers/cache:         92        402
Swap:          508          0        508
{{< /highlight >}}

The 'actual' free memory is at the second line, 402 MB .To understand more about the memory in Linux, the website [Linux ate my ram](http://www.linuxatemyram.com/) explains in humorous way.