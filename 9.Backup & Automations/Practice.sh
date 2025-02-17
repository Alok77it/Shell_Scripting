#!/bin/bash
#1. Copy file from one location to another

echo "Enter the source file path"
read source
if [-f $source]; then
    echo "Enter the destination file path"
    read destination
    cp $source $destination
    echo "File copied successfully"
else
    echo "File does not exist"
fi

#2. Automate daily backup using cron jobs

# Variables
SOURCE_DIR="/home/user/data"
BACKUP_DIR="/backup"
DATE=$(date +%Y-%m-%d)
BACKUP_PATH="$BACKUP_DIR/backup-$DATE.tar.gz"

# Create backup
tar -czf $BACKUP_PATH $SOURCE_DIR

# Optional: Delete backups older than 7 days
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

echo "Backup completed on $DATE"

#Compress a directory using tar and gzip

echo "Enter the directory to compress"
read dir
if [-e $dir]; then
    tar -czf $dir.tar.gz $dir
    echo "Directory compressed successfully"
else
    echo "Directory does not exist"
fi