#!/bin/bash

#A script that performs basic arithmetic operations (add, subtract, multiply, divide) based on user input#

echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2
echo "Enter the operation to perform (+, -, *, /): "
read operation

echo "Result: "
case $operation in
    +) echo "$num1 + $num2 = $((num1 + num2))";;
    -) echo "$num1 - $num2 = $((num1 - num2))";;
    \*) echo "$num1 * $num2 = $((num1 * num2))";;
    /) echo "$num1 / $num2 = $((num1 / num2))";;
    *) echo "Invalid Operation";;
esac