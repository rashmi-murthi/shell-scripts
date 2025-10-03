#######################
# Date 03-10-2025
# Auhor: Rashmi
#
# This file is to check nodeHealth
######################
#!/bin/bash

set -x #Debug mode
set -e #exit the the script when error occurs
set -o pipefail # consider the script execution eventhough pipe exists

echo "print the disk space"
df -h
echo "print the  memory"
free -g
echo "print the cpu"
nproc

