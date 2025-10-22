#!/bin/bash
##################################################
# Author: Tamilselvan Sellamuthu
# Date: 22/Oct/2025
# Print the collaborators of the repository
# Version: v1
##################################################
# set -x #debug verboose
set -e #exit when command fails
set -o pipefail

REPO_OWNER=$1
REPO_NAME=$2

curl -s -u $username:$token  https://api.github.com/repos/"$REPO_OWNER"/"$REPO_NAME"/collaborators | jq -r '.[] | select(.permissions.pull == true) | .login'
