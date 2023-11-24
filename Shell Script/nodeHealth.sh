#!/bin/bash

######################################
# Author: Aiman  Zehra
# Date: 01.11.2023
#
# This file consist of all important 
# shell command used in DevOps
#
#Version: 1.0 (v1)
######################################

set -x # Debug mode
set -e # Exit the script when there is an error
set -o pipefail

# We can also write the above commands as:
set - exo pipefail

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

# To retrieve the information from the internet we use 'curl' eg:- 
curl https://github.com/AimanZehra/DevOps/tree/main/Terraform | grep error

# To get details of any command to use, simply use 'man' before it eg:-
man curl

# To get the details of any logfile/any external link and get it 'DOwnloaded' we use 'wget' eg:-
wget https://github.com/AimanZehra/DevOps/tree/main/Terraform

# To find the file in the system
find

# To trap the signal given and perform action on your behalf
trap

# To find which bash am I using
which bash