#!/bin/bash

######################################
# Author: Aiman  Zehra
# Date: 01.11.2023
#
# Shell script to print the numbers 
# divisible by 3 and 5  and not 15
#
# Version: 1.0 (v1)
######################################

for i in {1..100}; do
if (['expr' $i % 3 == 0] || ['expr' $i % 5 == 0]) && ['expr' $i % 15 != 0]
then 
    echo $i
fi;
done