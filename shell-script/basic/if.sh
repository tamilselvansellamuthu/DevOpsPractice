#!/bin/bash
set -x 
set -e
set -o pipefail 

# Assign values to a and b
a=10
b=5

# Compare a and b
if [ "$a" -gt "$b" ]; then echo "a is bigger than b"
elif [ "$b" -gt "$a" ]; then echo "b is bigger than a"
else echo "a and b are equal"
fi

