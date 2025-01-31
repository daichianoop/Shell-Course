#!/bin/bash

# While Loop Example
myvar=1
while [ $myvar -le 10 ]
do
echo $myvar
myvar=$(( $myvar +1 ))
sleep 1
# sleep defines a fixed interval between actions
done
echo ""
echo ""
while [ -f /home/kiit/BashScripting/video7/testfile  ]
do
echo "As of $(date) file Exists"
done

echo "As of $(date) the file has gone missing"
# we can use this to notify when a script is deleted or setup an alert
