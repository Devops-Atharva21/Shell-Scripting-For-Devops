#!/bin/bash

# This script deletes a specified package present on the server.

# 1. FIX: Removed the '$' from the variable name in the read command.
read -p "Enter your package name: " package_name

echo "Attempting to stop and remove $package_name..."

# 2. Stop the service (Errors are hidden just in case the package isn't a running service)
sudo systemctl stop "$package_name" 2>/dev/null

# 3. Remove the package
sudo apt remove "$package_name"

# 4. FIX: Moved the success message to the end so it only prints AFTER the deletion happens.
# Using a simple if-statement to check if the last command (apt remove) was successful.
if [ $? -eq 0 ]; then
    echo "Success: Your package '$package_name' has been deleted."
else
    echo "Error: Something went wrong while trying to delete '$package_name'."
fi
