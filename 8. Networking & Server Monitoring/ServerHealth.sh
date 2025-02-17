#!/bin/bash
# Script that checks Memory, Disk usage, and Network connectivity

# Function to check Memory usage
check_memory_usage() {
    echo "Memory Usage:"
    free -h | awk 'NR==2{printf "Used: %s, Free: %s\n", $3, $4}'
}

# Function to check Disk usage
check_disk_usage() {
    echo "Disk Usage:"
    df -h | awk '$NF=="/"{printf "Used: %d%%\n", $5}'
}

# Function to check Network connectivity
check_network_connectivity() {
    echo "Enter the website you want to ping: "
    read website
    if [ `ping -c 1 $website &> /dev/null; echo $?` -eq 0 ]; then
        echo "$website is online"
    else
        echo "$website is offline"
    fi
}

# Main script execution
echo "Checking system health..."

check_memory_usage
echo ""
check_disk_usage
echo ""
check_network_connectivity

echo "System health check complete."