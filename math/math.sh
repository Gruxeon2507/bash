#!/bin/bash

expr 30 + 10
expr 30 - 10
expr 30 / 10

# in bash, * means everything in the current working directory
# escape symbol \ is used to escape the special meaning of *
expr 30 \* 10

# using variables
num1=20
num2=5
expr $num1 + $num2