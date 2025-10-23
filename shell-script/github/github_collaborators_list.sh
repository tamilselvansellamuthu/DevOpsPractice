#!/bin/bash
##################################################
# Author: Tamilselvan Sellamuthu
# Date: 22/Oct/2025
# Print the collaborators of the repository
# Version: v1
##################################################
# set -x # debug verboose
set -e # exit when command fails
# set -o pipefail on


validate_args() {
 
 # Print Number of Arguments	
 # echo "Number of Arguments: $#"
 # Check if exactly 2 arguments are provided
 if [ "$#" -ne 2 ]; then
      echo "Error: Exactly 2 arguments are required."
      exit 1
 fi

 # Check if either argument is null (empty string)
 if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Error: Arguments must not be empty."
    exit 1
 fi

 # Check if GitHub username and token is set in environment variable.
 if [ -z "$username" ] || [ -z "$token" ]; then
    echo "Error: Set Environment variable GitHub username and token to access GitHub API details"
    exit 1
 fi
}

 validate_args "$@"

REPO_OWNER=$1
REPO_NAME=$2

curl -s -u $username:$token  https://api.github.com/repos/"$REPO_OWNER"/"$REPO_NAME"/collaborators | jq -r '.[] | select(.permissions.pull == true) | .login'


