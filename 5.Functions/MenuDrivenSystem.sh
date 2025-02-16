#A script with a menu (1. Check disk usage, 2. Check memory usage, 3. Show uptime)

#!/bin/bash

function disk_usage(){
    df -h
}
function memory_usage(){
    free -h
}
function uptime(){
    uptime
}

echo "1. Check disk usage"
echo "2. Check memory usage"
echo "3. Show uptime"
read -p "Enter your choice: " choice
case $choice in
    1) disk_usage;;
    2) memory_usage;;
    3) uptime;;
    *) echo "Invalid choice";;
esac