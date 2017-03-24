#!/bin/sh

ipv4=$(/usr/local/bin/timeout3 -t 1 curl -s -4 23.253.218.205)
ipv6=$(/usr/local/bin/timeout3 -t 1 curl -s -6 23.253.218.205)

ipv6=''

if [[ $ipv6 ]]; then
	echo "YES"
else
	echo "NO"
fi

echo $ipv4
echo $ipv6
