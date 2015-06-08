+++
date = "2013-05-26T06:23:58+10:00"
draft = false
title = "Compile Static Library of zlib Using Visual Studio"

+++

# Compile Static Library of zlib Using Visual Studio

[Download](http://zlib.net/zlib128.zip) and extract zlib

Launch VS commad prompt: Microsoft Visual Studio 2008 -> Visual Studio Tools -> Visual Studio 2008 Command Prompt

Build:
{{< highlight shell >}}
$ cd zlib-1.2.8
$ nmake /f win32/Makefile.msc
{{< /highlight >}}

Output in `zlib-1.2.8` folder

    zlib.lib <- our static library. yeah!
    zdll.lib <- for dynamic linking, not using for now
    zlib1.dll <- for dynamic linking, not using for now

Copy `zlib.lib` and `zlib.h` to your project. Done!