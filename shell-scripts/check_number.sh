#!/bin/bash

#This script is to check whether number is positive,negative,zero

read -p "Enter your number: " NUMBER

if [ "$NUMBER" -eq 0 ]; then
	echo "Number is ZERO"

elif [ "$NUMBER" -gt 0 ]; then
	echo "Number is POSITIVE"

elif [ "$NUMBER" -lt 0 ]; then
	echo "Number is NEGATIVE"
fi
