#!/bin/bash

# var=1

# while [ $var -le 10 ]
# do
#     echo $var
#     var=$(( var + 1 ))
#     sleep 0.5
# done

# checking if a file exists
while [ -f ./test ]
do
    # $() is used to execute a command, while ${} is used to reference a variable
    echo "As of $(date), The file test exists."
    sleep 10
done

echo "As of $(date), The file test no longer exist. Exiting..."
