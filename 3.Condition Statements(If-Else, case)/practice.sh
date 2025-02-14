#!/bin/bash
#1. Check if a number is even or odd 
read -p "Enter your number: " num
if [ $((num%2)) -eq 0 ]; then
    echo "The number is even"
else
    echo "The number is odd"
fi


#2. Check if a file is readable, writable, or executable 
read -p "Enter your file name: " file
if [ -r "$file" ]; then
    echo "The file is readable"
fi
if [ -w "$file" ]; then
    echo "The file is writable"
fi
if [ -x "$file" ]; then
    echo "The file is executable"
fi


#3. Compare two numbers and print the larger one 

read -p "Enter your first number: " num1
read -p "Enter your second number: " num2

if [ $num1 -gt $num2 ]; then
    echo "The larger number is $num1"
else
    echo "The larger number is $num2"
fi


#4. Use case to print the day of the week based on user input

read -p "Enter a number between 1 and 7: " num
case $num in
    1)
        echo "Monday"
        ;;
    2)
        echo "Tuesday"
        ;;
    3)
        echo "Wednesday"
        ;;
    4)
        echo "Thursday"
        ;;
    5)
        echo "Friday"
        ;;
    6)
        echo "Saturday"
        ;;
    7)
        echo "Sunday"
        ;;
    *)
        echo "Invalid input. Please enter a number between 1 and 7."
        ;;
esac