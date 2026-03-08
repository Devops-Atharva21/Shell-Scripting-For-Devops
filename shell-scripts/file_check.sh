#!/bin/bash

#This is file check scripts

read -p "Enter your file_name: " FNAME

if [ -f $FNAME ]; then
	echo "File Exists"
else 
	echo "File Doesn't Exists"
fi
