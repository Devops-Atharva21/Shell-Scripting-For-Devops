#!/bin/bash

#This file is used to check the greater than number

read -p "Enter the value for A" a

read -p "Enter the value for B" b

if [ $a -gt $b ]; then
	echo "$a is Bigger"

else 
	echo "$b is Bigger"
fi
