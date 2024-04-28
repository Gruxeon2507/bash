#!/bin/bash

ls -l /etc
# #? is a special variable that holds the exit code of the LAST command
echo $?
# return 0 if the command was successful, others if the command failed

package=htop

# if the command hava error, the error message will still display in the terminal, not in the log file
sudo apt install  $package >> package_install.log

# echo "the exit code of the last command is: $?"

if [ $? -eq 0 ]
then
    echo "The package $package was installed successfully. The new command is: which $package"
else
    echo "The package $package was not installed successfully." >> package_install.log
fi
