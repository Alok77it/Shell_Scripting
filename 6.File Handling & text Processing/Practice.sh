#!/bin/bash
#1.Use grep to find a word in a file 

echo "Enter the word to search"
read word
echo "Enter the file name"
read file

if [ -f $file ];
then
  if grep -q $word $file; then
    echo "Word found"
  else
    echo "Word not found"
  fi
else
    echo "File not found"
fi

#2.Use awk to print the second column of a CSV file 

echo "Enter the file name"
read file

if [ -f $file ];
then
  awk -F, '{print $2}' $file
else
    echo "File not found"
fi


#3.Use sed to replace a word in a file 

echo "Enter the word to replace"
read word
echo "Enter the new word"
read new_word
echo "Enter the file name"
read file

if [ -f $file ];
then
  sed -i "s/$word/$new_word/g" $file
else
    echo "File not found"
fi

#4.Count the number of lines and words in a file 

echo "Enter the file name"
read file
if [ -f $file ];
then
  lines=$(wc -l < $file)
  words=$(wc -w < $file)
  echo "Number of lines: $lines"
  echo "Number of words: $words"
else
    echo "File not found"
fi  