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
    rem=$((num % 10)) # extracting the last digit
    rev=$((rev * 10 + rem)) # adding the last digit to the reverse number
    num=$((num / 10)) # removing the last digit
done
echo "Reverse of the number is $rev"
