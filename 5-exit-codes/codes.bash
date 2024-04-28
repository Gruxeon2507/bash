#!/bin/bash

directory=/etc
if [ -d $directory ]
then
    echo "The directory $directory exists."
    exit 0 # exit the script with a success status
else
    echo "The directory $directory does not exist."
    exit 1
fi

echo "The exit code of the last command is: $?"

echo "Hello World!"
# exit code of user defined
exit 199
echo $?