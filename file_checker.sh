#!/bin/bash

# Check if a file name is passed or entered.
if [ -z "$1" ]; then

   echo -e "Err: no file name ws entered! \nHow to check: $0 <file name>"
   exit 1

fi

filename="$1" 

# Check if the file exists.

if [ -f "$1" ]; then

   echo "The file with the filename: '$filename', exists."

else

   echo "The file with the filename: '$filename', does not exist."
   exit 1

fi
