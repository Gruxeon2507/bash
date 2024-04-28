#!/bin/bash

num=200

if [ ! $num -eq 200 ]
then
    echo "The condition is True"
else 
    echo "The variables does not equal 200."
fi

# the ! symbol is used to negate the condition
if [ ! $num -eq 200 ]
then
    echo "The condition is True"
else 
    echo "The variables does not equal 200."
fi

# the -ne flag is used to check if the variables are not equal
if [ ! $num -ne 300 ]
then
    echo "The condition is True"
else 
    echo "The variables does not equal 300."
fi

# the -gt flag is used to check if the variable is greater than
if [ ! $num -gt 200 ]
then
    echo "The condition is True"
else 
    echo "The variables does not greater than 200."
fi

# the -lt flag is used to check if the variable is less than
if [ ! $num -lt 200 ]
then
    echo "The condition is True"
else 
    echo "The variables does not less than 200."
fi

# checking if a file exists
if [ -f  /etc/passwd ]
then
    echo "The file /etc/passwd exists."
else 
    echo "The file /etc/passwd does not exist."
fi

# create a script that checks if a command exists, if it does not exist, install it
command=/usr/bin/htop

if [ -f $command ] # the [] is a test command
then
    echo "The command $command exists, running..."
else 
    echo "The command $command does not exist, installing..."
    sudo apt update && sudo apt install -y htop # -y flag is used to automatically answer yes to the prompt
fi

# optimize the script by checking if the command exists using the command -v
command=htop

if command -v $command # command -v is used to check if a command exists
then
    echo "The command $command exists, running..."
else 
    echo "The command $command does not exist, installing..."
    sudo apt update && sudo apt install -y $command # -y flag is used to automatically answer yes to the prompt
fi

# the "man" command is used to view the manual of the command
man test