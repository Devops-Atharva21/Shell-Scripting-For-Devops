#!/bin/bash

#This script is use to call function

haldi() {
 echo "Haladi lago"
 echo "Paani Dalo"
}

#This function is use to install package 

install_package() {

 echo "$1 is the locoal argument passed to function"

	sudo apt-get install $1
}

install_package docker.io 
