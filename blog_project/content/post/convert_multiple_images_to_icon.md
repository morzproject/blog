+++
date = "2013-06-13T00:33:48+10:00"
draft = false
title = "Convert Multiple PNG Images Into a Single Icon File"
aliases = [
    "/convert-multiple-png-images-into-a-single-icon-file/"
]
+++

# Convert Multiple PNG Images Into a Single Icon File

[Download](http://www.imagemagick.org/download/binaries/) and extract ImageMagick.

Run this command
{{< highlight shell >}}
convert.exe image-16.png image-32.png image-48.png image-64.png image-128.png my-icon.ico
{{< /highlight >}}