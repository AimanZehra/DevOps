#!/bin/bash

######################################
# Author: Aiman  Zehra
# Date: 01.11.2023
#
# This script outputs the node health
#
#Version: 1.0 (v1)
######################################

set -x # Debug mode
set -e # Exit the script when there is an error
set -o # Pipefail

# To print the disk space
df -h

# To print the Memory
free -g

# To print the resources
nproc

# To show all processes in full format
ps -ef

# To fetch the process with a particular keyword we use: 'grep' eg:-
ps -ef | grep Amazon

# To fetch any specific column we use 'awk' eg:-
ps -ef | grep amazon | awk -F" " '{print $2}'
