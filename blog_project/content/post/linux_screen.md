+++
date = "2015-03-02T11:24:52+10:00"
draft = false
title = "linux_screen"

+++

Screen is a Linux tool to run multiple virtual terminal from a command line. It is useful when you need to run long processes and you need to close your SSH client. Screen is really life saver.

### Start
Start a new Screen

```
$ screen
```

### Detach
Detach from Screen (left screen running in background)

```
$ ctrl a d
```

### List
View running virtual terminal in background

```
$ screen -ls
```

There are screens on:
```
5311.pts-0.langkawi (08/23/2013 05:27:39 PM) (Detached)
5253.pts-0.langkawi (08/23/2013 05:27:09 PM) (Detached)
2 Sockets in /var/run/screen/S-ubuntu.
```

### Resume
Resume existing Screen

```
$ screen -r 5253.pts-0.langkawi
```

### Exit
To exit or close Screen, go inside the Screen and type exit or press ctrl a k.

```
$ exit
```

or

```
$ ctrl a k
```