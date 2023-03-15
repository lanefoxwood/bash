#!/bin/bash
#
#this script will simply accept a access_log.txt input file and return all of the filenames of the javascript files inside. 
#
#it could be extended later to download the archive with wget or curl, and then extract the archive to yield a text file to use as the input. 
#

grep -o '[^/]*\.js' $1 | sort | uniq
