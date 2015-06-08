+++
date = "2013-05-26T07:23:22+10:00"
draft = false
title = "Compile Static Library of libpng Using Visual Studio"

+++
Compile `zlib` first (follow [these steps]({{< relref "compile_static_zlib.md" >}})).


Next, [download](http://sourceforge.net/projects/libpng/files/libpng16/1.6.17/lpng1617.zip/download) the latest libpng (e.g) library and extract it.

Launch VS command prompt: Microsoft Visual Studio 2008 -> Visual Studio Tools -> Visual Studio 2008 Command Prompt

Create a new `zlib` folder inside it:
{{< highlight shell >}}
$ cd lpng1617
$ mkdir zlib
{{< /highlight >}}
<!--more-->
Copy(output from [these steps]({{< relref "compile_static_zlib.md" >}}) ) `zlib.lib`, `zconf.h` and `zlib.h` to the new zlib folder.

Build:
{{< highlight shell >}}
$ nmake /f scriptsmakefile.vcwin32
{{< /highlight >}}

Output in `lpng1617` folder.

    libpng.lib
    
Copy `png.h` and `libpng.lib` to your project. Done!