#!/bin/bash
#
###########################################
# Author: Tamilselvan Sellamuthu
# Date: 18/Oct/2025
# For fetching node Health 
# # Version: v1
# #########################################
#set -x #debug mode
set -e #stop and exit script when command fails in any line.
#set -o #stop and exit script even if input for a pipe command fails.
free -h > nodeHealthReport.txt
nproc >> nodeHealthReport.txt
df -h >> nodeHealthReport.txt
ps -ef | grep 'docker' | awk -F " " '{print $2}' > nodeHealthReport.txt
