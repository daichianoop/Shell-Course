#!/bin/bash

# directory=/home/kiit/BashScripting/video6/dir
directory=/home/kiit/BashScripting/video6/notexists
if [ -d $directory ]
then
echo "The Directory Exists"
else
echo "The Directory does not Exist"
fi
# The $? exit code is only defined for the command just before it
# an exit code after an echo state ment will always be 0
# make sure to check the exit code is used at the right time
echo "The exit code for this script run is $?"
