+++
date = "2013-05-24T19:15:18+10:00"
draft = false
title = "How to Batch Compress PNG Images"
description = "Quick tutorial on how to batch compress PNG images using pngcrush. Pngcrush is a free tool and available for Windows, Mac and Linux"
+++
Download [pngcrush](http://sourceforge.net/projects/pmt/files/pngcrush-executables/1.7.85/pngcrush_1_7_85_w32.exe/download)

Create a new `images/compress.bat` file
{{< highlight batch >}}
for /f "tokens=*" %%x in ('dir /b *.png') do (
	echo "crushing %%x"
	pngcrush_1_7_58_w64.exe -brute "%%x" temp.png
	move /Y temp.png "%%x"
)
{{< /highlight >}}
<!--more-->
Put all `*.png` images under the `images` folder and run
{{< highlight shell >}}
$ compress.bat
{{< /highlight >}}