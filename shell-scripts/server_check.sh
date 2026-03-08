#!/bin/bash

# 1. Store a service name in a variable (Change 'sshd' to your preferred service)
SERVICE="nginx"

# 2. Ask the user if they want to check the status
read -p "Do you want to check the status of $SERVICE? (y/n): " choice

# 3 & 4. Check the user's response
if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
    echo "Running systemctl status for $SERVICE..."
    echo "----------------------------------------"
    
    # Run the status command (using --no-pager so it doesn't get stuck in less/vim mode)
    systemctl status "$SERVICE" --no-pager
    
    echo "----------------------------------------"
    
    # Print whether it is active or not cleanly
    if systemctl is-active --quiet "$SERVICE"; then
        echo "Result: The $SERVICE service is ACTIVE."
    else
        echo "Result: The $SERVICE service is NOT ACTIVE."
    fi

elif [ "$choice" == "n" ] || [ "$choice" == "N" ]; then
    echo "Skipped."
else
    echo "Invalid input. Skipped."
fi
