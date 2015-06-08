+++
date = "2013-08-23T17:33:21+10:00"
draft = false
title = "Linux Screen Tutorial"

+++

# Linux Screen Tutorial

Screen is a Linux tool to run multiple virtual terminal from a command line. It is useful when you need to run long processes and you need to close your SSH client. Screen is really life saver.

## Start
Start a new Screen
{{< highlight shell-session >}}
$ screen
{{< /highlight >}}

## Detach
Detach from Screen (left screen running in background)
{{< highlight shell-session >}}
$ ctrl a d
{{< /highlight >}}

## List
View running virtual terminal in background
{{< highlight shell-session >}}
$ screen -ls
{{< /highlight >}}

There are screens on:
{{< highlight shell-session >}}
5311.pts-0.langkawi (08/23/2013 05:27:39 PM) (Detached)
5253.pts-0.langkawi (08/23/2013 05:27:09 PM) (Detached)
2 Sockets in /var/run/screen/S-ubuntu.
{{< /highlight >}}

## Resume
Resume existing Screen
{{< highlight shell-session >}}
$ screen -r 5253.pts-0.langkawi
{{< /highlight >}}

## Exit
To exit or close Screen, go inside the Screen and type `exit` or `ctrl + a k`.