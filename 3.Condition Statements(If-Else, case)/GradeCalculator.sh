#!/bin/bash

read -p "Enter your marks: " marks

if (( marks >= 80 )); then
    echo "Grade: A"
elif (( marks >= 60 )); then
    echo "Grade: B"
elif (( marks >= 40 )); then
    echo "Grade: C"
else
    echo "Grade: F"
fi