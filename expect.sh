#!/usr/bin/expect -f
#
#
set SERVER [lindex $argv 0]
set PORT [lindex $argv 1]
set PASSCODE [lindex $argv 2]
spawn telnet $SERVER $PORT
sleep .5
expect "ACCESS CODE:"
send "$PASSCODE\r";
expect {
	"ERROR" {
		exit
	}
	"FAILED" {
		exit
	}
	}	
interact
