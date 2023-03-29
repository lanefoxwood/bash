#!/bin/bash

#this script accepts a simple wordlist as the first arg, then and invokes host to bruteforce for subdomains at the specified domain, which is the second arg. 
# usage example: ~$ ./dnsbruteforce ~/list.txt websitetoenumerate.com 
#no output sanitizing/piping or redirection, no sophistication on this one. just give it a wordlist!

list=$1
domain=$2

for ip in $(cat $list); do host $ip.$domain; done
