#!/bin/bash

# the /etc/os-release file contains information about the operating system
release_file=/etc/os-release

# grep is a command-line utility for searching plain-text data sets for lines that match a regular expression
# the -q flag is used to suppress output
# you can use the linux command as a conditional in a if
if grep -q "Arch" $release_file
then
    # the host system is Arch-based, run the pacman update command
    # the -Syu flag updates the package list and upgrades the packages
    sudo pacman -Syu
fi

# Debian-based systems include Debian, Ubuntu, and Pop!_OS
if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file || grep - q "Pop" $release_file
then
    # the host system is Debian-based, run the apt update and dist-upgrade commands
    # run the apt update command to update the package list
    sudo apt update
    sudo apt dist-upgrade
fi

# the -d flag checks if the directory exists
if [ -d /etc/pacman.d]
then
    # the host system is Arch-based, run the pacman update command
    # the -Syu flag updates the package list and upgrades the packages
    sudo pacman -Syu
fi


if [ -d /etc/apt]
then
    # the host system is Debian-based, run the apt update and dist-upgrade commands
    # run the apt update command to update the package list
    sudo apt update
    sudo apt dist-upgrade
fi