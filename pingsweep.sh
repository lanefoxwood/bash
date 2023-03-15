#!/bin/bash
#
#ping sweep example which sends 5 ICMP echo packets to target the ip range of 10.11.1.0/24 or 10.11.1.0-255
#

for ip in $(seq 0 255); do
        ping -c 5 10.11.1.$ip;
done
