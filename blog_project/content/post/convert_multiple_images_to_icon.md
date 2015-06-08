+++
date = "2015-03-02T11:19:37+10:00"
draft = false
title = "Convert Multiple PNG Images Into a Single Icon File"

+++

# Convert Multiple PNG Images Into a Single Icon File

[Download](http://www.imagemagick.org/download/binaries/) and extract ImageMagick.

Run this command
{{< highlight shell >}}
convert.exe image-16.png image-32.png image-48.png image-64.png image-128.png my-icon.ico
{{< /highlight >}}