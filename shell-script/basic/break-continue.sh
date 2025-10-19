#!/bin/bash
#############################################
#
# Author: TAMILSELVAN SELLAMUTHU
# Date:   19/Oct/2025
#
# This program is to return 
# ** PIM when a number is divisible by 3
# ** POM when a number is divisible by 5
# ** Nothing when a number is divisible by 3*5
# ** Breaks when 50
# Version: v2
# ###########################################

#set -x #debug with verboose
set -e #exit when error
set -o pipefail

for((i=1;i<=100;i++))
do
	if (($i == 50)) ; then break;
	elif (($i % 15 == 0)) ; then continue;
	elif(($i % 5 == 0)) ; then echo " $i - POM";
	elif(($i % 3 == 0)) ; then echo " $i - PIM";
	fi
done
