#!/bin/bash

######################################
# Author: Aiman  Zehra
# Date: 25.11.2023
#
# Script to check the disk space of the sytem and, 
# give the 'Alert' message for the files which are occupyting space more than 90%.
#
# Version: 1.0 (v1)
######################################

alert = 90
# Check the disk space, print the 5th and 1st coulmn (ex: File system and Uage%) and finally reads the 'Outpit'
df -H | awk '{print $5 " " $1}' | while read output;
do

# Prints the 1st column, and further cuts the string which is '%'.
Usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)

file_sys=$(echo $output | awk '{print $2}')
if [ $Usage -ge $alert ]
then    
    echo "CRITICAL for $file_sys"
fi
done