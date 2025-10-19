#!/bin/bash
#set -x
set -e
set -o pipefail

# For loop to print 1-100
# for ((i=1; i<=100; i++)); do echo "$i"; done # Approach 1
# for i in {1..100}; do echo "$i"; done # Approach 2

# For Loop to print array
# fruits=("apple" "banana" "cherry"); for ((i=0; i<=2; i++)); do echo "${fruits["$i"]}"; done # Approach 2
# fruits=("apple" "banana" "cherry"); for fruit in "${fruits[@]}"; do echo "$fruit"; donei # Approach 1

# While loop to print 1-100
# i=1; while (($i<=100)); do echo "$i"; ((i++)); done	
# while true; do echo "Running"; sleep 1; done # Infinite while loop

# Until loop to print 1-100
# i=1; until (($i>100)); do echo "$i"; ((i++)); done
# until false; do echo "Running"; sleep 1; done # Infinite until loop
