#!/bin/bash 

# basic bash script to examie the scan results through html
#

echo "<HTML><BODY><BR>" > web.html

ls -1 *.png | awk -F : '{print $1":\n<BR><IMG SRC=\""$1""$2"\" width=600></BR>"}' >> web.html

echo "</BODY></HTML>" >> web.html
