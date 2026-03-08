#!/bin/bash

<<usage
- take the user name as input
-take password as input
-check if user already exists
-create the user
usage
create_user() {

read -p "Enter the username:" username
read -p "Enter the password:" password

if id "$username" &>/dev/null;then
	echo "The user $username already exists"
	exit 1
else 
	echo "The user $username doesn't exists and will be created"
fi

sudo useradd -m $username -p $password

echo "user $username added successfully"

}
