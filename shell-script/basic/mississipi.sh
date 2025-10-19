#!/bin/bash
#################################################
# Author: TAMILSELVAN SELLAMUTHU
# Date: 19/Oct/2025
# To Print Number of 'S' in the word 'mississipi'
# Version: v1
# ###############################################

#set -x # debug verboose mode
set -e # exit when error
set -o pipefail

text="mississipi"

#grep -o output on newline | count the words in line 
echo $text | grep -oi 's' | wc -l
