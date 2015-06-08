+++
date = "2013-05-23T01:26:45+10:00"
draft = false
title = "JQ - JSON Command Line Tool"

+++
Meet jq . [http://stedolan.github.io/jq/](http://stedolan.github.io/jq/) .

A simple command line tool to process JSON file.

{{< highlight shell-session >}}
$ echo {} > test.json
$ jq ".name = "Mike"" test.json
{{< /highlight >}}
<!--more-->
output :
{{< highlight json  >}}
{
 "name": "Mike"
}
{{< /highlight >}}