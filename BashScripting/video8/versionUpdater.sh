#!/bin/bash
# Universal Installer/Updater Script

release_file=/etc/os-release
# grep - if Arch is there inrelease_file then this will run
#[[[[[   remove the brackets before using this code
#if grep -q "Arch" $release_file
#then
	# The host is based on Arch Linux Systems, run the pacman update command
#	sudo pacman -Syu
#fi
# grep - if Ubuntu is there in release_file then this will run
#if grep -q "Ubuntu" $release_file
#then
	# The host is based on Ubuntu,
	# Run the apt version of the previous command
#	sudo apt update
#	sudo apt dist-upgrade
#fi
#]]]]    THIS VERSON WILL DOWNLOAD ONLY ON ARCH AND UBUNTU BUT NIR ON DEBIAN
# grep is a command and can search for existence of specific strings
# in text files
# -q is QUIET MODE

if grep -q "Arch" $release_file
then
        # The host is based on Arch Linux Systems, run the pacman update command
        sudo pacman -Syu
fi
# grep - if Ubuntu is there in release_file then this will run
if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file # used or
then
        # The host is based on Debian or Ubuntu,
        # Run the apt version of the previous command
        sudo apt update
        sudo apt dist-upgrade
fi
