#!/bin/bash

# Script to display system username, hostname, current directory, and the number of logged-in users

# Display the system username
echo "Username: $USER"

# Display the hostname
echo "Hostname: $(hostname)"

# Display the current directory
echo "Current Directory: $(pwd)"

# Display the number of logged-in users
echo "Number of logged-in users: $(who | wc -l)"