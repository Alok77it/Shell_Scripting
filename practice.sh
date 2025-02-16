#!/bin/bash

create_directory() {
  mkdir demo
}

if [ -d demo ]; then
  echo "Directory exists"
else
  echo "Directory does not exist"
  create_directory
fi
  
echo "this code will not work"