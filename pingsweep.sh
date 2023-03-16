#!/bin/bash
#
#ping sweep example which sends 5 ICMP echo packets to target the ip range of 10.11.1.0/24 or 10.11.1.0-255
#

#for ip in $(seq 0 255); do
#        ping -c 5 10.11.1.$ip;
#done
#==============================================================================================#
#!/bin/bash
#
#This script accepts 3 args to ping a range of ip addresses and prints only those ip addresses which respond - one per line
#

for i in $(seq $2 $3); do

        ping -n -c 1 $1.$i 2>&1 >/dev/null
        if [ $? = 0 ]
        then
                echo $1.$i
        fi;
done

