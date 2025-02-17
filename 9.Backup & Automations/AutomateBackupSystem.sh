# A script to sechdule the backups of important files and directories

#!/bin/bash

# Variables
BACKUP_DIR="/backup"  # Directory where backups will be stored
DATE=$(date +%Y-%m-%d)  # Current date for naming the backup file
BACKUP_NAME="backup-$DATE.tar.gz"  # Name of the backup file
BACKUP_PATH="$BACKUP_DIR/$BACKUP_NAME"

# Directories and files to back up (you can add as many as you want)
SOURCE_DIRS=(
    "/home/user/data"
    "/etc/nginx"
    "/var/www/html"
)

# Create the backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Create a tar archive of all specified directories/files
tar -czf $BACKUP_PATH ${SOURCE_DIRS[@]}

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successfully created at $BACKUP_PATH"
else
    echo "Error creating backup"
    exit 1
fi

# Optional: Delete backups older than 7 days
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

echo "Old backups cleaned up."