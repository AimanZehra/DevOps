#!/bin/bash

# Source directory of which we have to take the backup
src_dir=/home/ubuntu/scripts

# Traget directory where we will keep the backup
tgt_dir=/home/ubuntu/backups

# Writing the time stamp at which the backup will be taken
curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
echo "Taking backup on $curr_timestamp"

# Creating the target backup directory to keep the backup files
backup_file=$tgt_dir/$curr_timestamp.tgz

# Creating a zip file and taking the backup of target directory into the zip file
tar czf $backup_file $src_dir

echo "Backup complete"
