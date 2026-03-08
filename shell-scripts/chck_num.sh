#!/bin/bash

# Prompt the user to enter a number
read -p "Enter a number: " num

# Check the conditions using integer comparison operators
if [ "$num" -eq 0 ]; then
    echo "The number is zero."
elif [ "$num" -gt 0 ]; then
    echo "The number is positive."
elif [ "$num" -lt 0 ]; then
    echo "The number is negative."
fi
