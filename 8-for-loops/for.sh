#!/bin/bash

for current_number in  {1..10}
do 
    echo $current_number
    # sleep 1
done

echo "All done!"

for file in ./logfiles/*.log
do
    # tar is a program that creates archives
    tar -czvf $file.tar.gz $file
done