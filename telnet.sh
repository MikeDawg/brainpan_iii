#!/bin/bash
#
#
TELNETSERVER=192.168.115.166
TELNETPORT=1337
for i in {0000..9999}; do
	expect /tmp/expect.sh $TELNETSERVER $TELNETPORT ${i}
done
