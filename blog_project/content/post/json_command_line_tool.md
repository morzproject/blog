+++
date = "2015-03-01T00:13:33+10:00"
draft = false
title = "json_command_line_tool"

+++

Meet jq . http://stedolan.github.io/jq/ .

A simple command line tool to process JSON file.

{{< highlight shell >}}
$ echo {} > test.json
$ jq ".name = "Mike"" test.json
{{< /highlight >}}

output :

{{< highlight javascript  >}}
{
 "name": "Mike"
}
{{< /highlight >}}