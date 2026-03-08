#!/bin/bash 

#This is file is for deleting file by their name

read -p"Enter the file_name:" file_name

echo "Your file has been deleted successfully" $file_name

rm $file_name
