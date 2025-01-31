#!/bin/bash
#package=htop
# ^ will install htop and will work
package=invalid
# ^ will give error exit code 100
sudo apt install $package >> package_install_results.log
# >> ---- redirects the log file from cmd to a file instead
# Checking if the command was succesfull
errCode=$?
echo "The Exit Code for the Package installed in : $errCode"
# we can set an action in case a specific exit code appears
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo "Error code here is $errCode"
if [ "$errCode" -eq 0 ]
then
	echo "Installation of $package was successful"
	echo "The new command is available here"
	which $package
else
	echo "$package failed to install with error code $errCode"
	echo " The Pacakage failed to install " >> package_install_results.log
fi

# you can also pass command exit followed by any number --
# like exit 0 or exit 999 , these will exit the program at any place and
# set up the desired exit code that i want
