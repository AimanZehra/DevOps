#!/bin/bash

######################################
# Author: Aiman  Zehra
# Date: 01.11.2023
#
# Practice Examples 
#
# Version: 1.0 (v1)
######################################

# Shell script to print the numbers divisible by 3 and 5  and not 15
for i in {1..100}; do
if (['expr' $i % 3 == 0] || ['expr' $i % 5 == 0]) && ['expr' $i % 15 != 0]
then 
    echo $i
fi;
done

# Shell script to write the number of 's' in mississipi

x = mississipi
grep -o "s" <<< "$x" | wc -l