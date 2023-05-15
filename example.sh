#!/usr/bin/env bash

mkdir scripts
cd scripts
touch new_script.sh
ls -lh new_script.sh # check the permission
chmod u+x new_script.sh # give permission
./new_script.sh # run the script
cd /    # go to the root
ls / > ~/workdir/scripts/system_dirs.txt # put the output to a text file
ls / | wc -l # count lines of the output

FILE=~/workdir/system_dirs.txt # set file path variable (variable name always in capital letters)
wc -l $FILE

