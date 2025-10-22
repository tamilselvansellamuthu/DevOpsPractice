#!/bin/bash
#############################################
# Author: Tamilselvan Sellamuthu
# Date:   19/Oct/2025
# This script is to track below aws resources
# ** S3
# ** EC2
# ** LAMBDA
# ** IAM
# Version: v1
#############################################
# set -x # debug verbose mode
set -e # exit when a command fails
set -o pipefail # exit if pipe input expression fails

# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM

# List S3 buckets
aws s3 ls > aws_resources_report.txt 

# List EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID' >> aws_resources_report.txt

# List LAMBDA functions
aws lambda list-functions >> aws_resources_report.txt

# List IAM Users
aws iam list-users | jq '.Users[].UserName' >> aws_resources_report.txt
