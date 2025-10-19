#!/bin/bash
###################################
# Author: TAMILSELVAN SELLAMUTHU
# Date: 19/Oct/2025
# Return sorted result
# Version: v1
# #################################

# set -x # debug verboose
set -e # exit when error
set -o pipefail # exit when pipe input expression fails

fruits=("banana" "apple" "cherry")
# fruits=("banana" "apple" "cherry" "banana")
# numbers=(5 1 3 2 4)

# ps aux | sort -k 3 -n # Sort using column 3 (CPU)
# sort fruits.txt
# sort -r fruits.txt

printf "%s\n" "${fruits[@]}" | sort    # Sort
# printf "%s\n" "${fruits[@]}" | sort -r # Reverse Sort
# printf "%s\n" "${fruits[@]}" | sort -u # Sort with No duplicates
# printf "%s\n" "${numbers[@]}" | sort -n
# printf "%s\n" "${numbers[@]}" | sort -nr

