#!/bin/bash

#1. Define and print variables #

name="Rahul"
echo "My name is $name"

#2. Swap two numbers using variables #

echo "Enter the first number: "
read a
echo "Enter the second number: "
read b
echo "Before swapping: a = $a, b = $b" 
temp=$a
a=$b
b=$temp
echo "After swapping: a = $a, b = $b"

#3. Perform arithmetic operations (+, -, *, /) #
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2
echo "Sum: $((num1 + num2))"
echo "Difference: $((num1 - num2))"
echo "Product: $((num1 * num2))"
echo "Division: $((num1 / num2))"
echo "Modulus: $((num1 % num2))"

#4. Read user input and store it in variables #
echo "Enter your name: "
read name
echo "Enter your age: "
read age
echo "Enter your city: "
read city
echo "Name: $name, Age: $age, City: $city"