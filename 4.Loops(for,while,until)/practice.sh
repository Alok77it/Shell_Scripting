#!/bin/bash

#1.Print numbers 1 to 10 using a loop 
for i in {1..10}
do
    echo $i
done


#2.Find the factorial of a number 

read -p "Enter a number: " num
fact=1
for (( i=1; i<=$num; i++ ))
do
    fact=$((fact * i))
done
echo "Factorial of $num is $fact"


#3.Reverse a number using a loop 
read -p "Enter a number: " num 
rev=0
while [ $num -gt 0 ]
do
    rem=$((num % 10))
    rev=$((rev * 10 + rem))
    num=$((num / 10))
done
echo "Reverse of the number is $rev"

#4.Print the Fibonacci series up to N terms 