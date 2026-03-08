#!/bin/bash

#This script is for installing the packages

read -p "Enter the package name" package_name

echo "checking if package is already been installed..."

if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name already installed"
	exit 1
else
	echo"Continuing installation..."
fi

echo"Installing your package $package_name"
sudo apt-get update
sudo apt install $package_name -y

read -p "Enter the service name" service_name

sudo systemctl start $service_name
systemctl status $service_name
