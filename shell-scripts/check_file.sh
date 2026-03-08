#!/bin/bash

#This file is use to check the file present in directory

if [ -f "/etc/passwd" ]; then
	echo "File exists"
else
	echo "File doesn't exists"

fi
