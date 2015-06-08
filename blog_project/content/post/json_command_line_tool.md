+++
date = "2015-03-01T00:13:33+10:00"
draft = false
title = "JSON Command Line Tool"

+++

Meet jq . [http://stedolan.github.io/jq/](http://stedolan.github.io/jq/) .

A simple command line tool to process JSON file.

{{< highlight shell-session >}}
$ echo {} > test.json
$ jq ".name = "Mike"" test.json
{{< /highlight >}}

output :
{{< highlight json  >}}
{
 "name": "Mike"
}
{{< /highlight >}}