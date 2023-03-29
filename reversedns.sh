#!/bin/bash

#this script performs reverse lookups by invoking host on a range of ips, then filters the output to show resolved names found
#it accepts 3 args, the first arg is the starting number of the last octect for an ipv4 address. the 2nd arg is the ending number of the last octect for an ipv4 address. These first two arguments effectively form a range of host numbers, i.e. 200 thru 254
# the third argument is the first 3 octects of an ipv4 address, i.e. 192.168.1
# usage example ~$ ./reversedns.sh 200 254 10.11.10
START=$1
END=$2
FIRST3=$3

for ip in $(seq $START $END); do host $FIRST3.$ip; done | grep -v "not found"