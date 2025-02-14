#!/bin/bash

# 1. Write a script to print "Hello, World!" #

echo "Hello, World!"

#2. Create a script that takes user input and prints it back #

echo = "Enter the your Input: "
read input
echo "Your Input is: $input"

#3. Write a script to check if a file exists #

echo "Enter the file name: "
read file_name
if [ -f $file_name ]
then
    echo "File Exists"
else
    echo "File does not exists"
fi

#4. Display system date and time #

echo "Current Date and Time: $(date)"

#5.Print the username and home directory #

echo "Username: $USER"
echo "Home Directory: $HOME"