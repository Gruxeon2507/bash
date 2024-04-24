#!/bin/bash

name="Duke"
age="20"

echo "My name is $name."
echo 'My nam is $name.' # will not print the value of $name when using single quotes
echo "I'm $age years old."

# Make sure to don't put spaces between the variable name, the equal sign, and the value
word="awesome"

echo "Bash scripting is $word."
echo "Video games are $word."
echo "Programming is $word."

# Save outputs of command as variables (sub-shell)
files=$(ls)
echo "Files in the current directory are: $files"
now=$(date)
echo "Current date and time: $now"

# declare variable should be in lowercase to avoid conflicts with environment variables
echo "User: $USER"

# view all environment variables
env