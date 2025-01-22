#!/bin/bash
# Variables and stuff
myName="Anoop"
myAge="20"

echo "Hello my name is $myName"
echo 'Hello my name is $myName'
echo ""
# Varibles in echo state do not work if we use ' single quotes. In " bash understands that the variable value needs to be printed
echo "I'm $myName"


# subshell commands
# you can store commands as variables as well
# cmd=$(pwd)
# echo $(cmd)"

now=$(date)

echo "The System Time and Date is : $now"
echo ""
date
echo "Only with the command ^"

# variables with uppercase names are environment variables like $USER
# You can check all the env variables by writing env in the CLI

echo "$HOSTNAME"
