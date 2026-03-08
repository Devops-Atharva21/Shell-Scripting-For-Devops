#!/bin/bash

# This file is made for deleting the packages present on the server.

read -p "Enter your package_name:" $package_name

echo "Your package has been deleted successfully  $package_name"

sudo systemctl stop "$package_name"
sudo apt remove "$package_name"
