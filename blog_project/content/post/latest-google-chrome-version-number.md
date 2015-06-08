+++
date = "2013-05-25T00:01:05+10:00"
draft = false
title = "Get Latest Google Chrome's Version Number Using Command Line"

+++
Download [XMLStarlet(~1.5 MB)](http://sourceforge.net/projects/xmlstar/files/xmlstarlet/1.6.1/xmlstarlet-1.6.1-win32.zip/download) and [Curl](http://www.paehl.com/open_source/?download=curl_742_1_ssh2_ssl.zip)

Create a new file, query.xml and insert
{{< highlight xml >}}
<?xml version="1.0" encoding="UTF-8"?>
<request protocol="3.0" ismachine="1">
   <os platform="win" version="6.1" sp="" arch="x86" />
   <app appid="{4DC8B4CA-1BDA-483E-B5FA-D3C12E15B62D}" ap="-multi-chrome" brand="GGLS">
      <updatecheck />
   </app>
</request>
{{< /highlight >}}
<!--more-->
Run both Curl and XMLStarlet commands:
{{< highlight shell >}}
$ curl -X POST -d @query.xml https://tools.google.com/service/update2 > response.txt
$ xml sel -t -m //manifest -v @version -n response.txt
{{< /highlight >}}

output

    27.0.1453.94