#!/bin/bash

#this script checks users and groups and prints stuff

read username
read groupname

### helper function 1 - output is result1

grep_username() {
    grep -q $1 /etc/passwd
    result1=$?
}

### helper function 2 - output is result2

grep_groupname(){
        grep -q $1 /etc/group
        result2=$?
}

### helper function 3 - output is result3

user_in_group(){

        grep -q $1 /etc/group | grep $2
        result3=$?
}

### calling each function
user_in_group $groupname $username
grep_username $username
grep_groupname $groupname

###print each resulting $? to the screen:

# echo $result3 $result1 $result2

### main if block here
if [ $result1 != 0 ] && [ $result2 != 0 ]
then
    echo "Both are not found"
elif [ $result1 = 0 ] && [ $result2 = 0 ] && [ $result3 = 0 ]
then
        echo "Membership vaild!"
elif [ $result1 = 0 ] && [ $result2 = 0 ] && [ $result3 != 0 ]
then
        echo "Membership invalid but user can join group."
elif [ $result1 != 0 ] && [ $result2 = 0 ] 
then
    echo "One exists, one does not."
elif [ $result1 = 0 ] && [ $result2 != 0 ]
then
        echo "One exists, one does not."
fi


#end of script