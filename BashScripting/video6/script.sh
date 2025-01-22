#!/bin/bash
#package=htop
package=notexist
# ^ will give error exit code 100
sudo apt install $package
# Checking if the command was succesfull
echo "The Exit Code for the Package installed in : $?"
# we can set an action in case a specific exit code appears
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
if [ $? -eq "0" ]
then
	echo "Installation of $package was successful"
	echo "The new command is available here"
	which $package
else
	echo "$package failed to install with error code $?"
fi
