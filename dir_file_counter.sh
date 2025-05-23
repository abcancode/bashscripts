#!bin/bash

# Check if a directory path is entered.
if [ -z "$1" ]; then

   echo -e "Err: no directory path was enetered! \nHow to use: $0 <directory-path>"
   exit 1

fi

dir_path="$1"

# Check if the directory exists.
if [ ! -d "$dir_path" ]; then

  echo "Err: '$dir_path' is not a vaild directory."
  exit 1

fi

# Count all files in the directory.
file_count=$(find "$dir_path" -maxdepth 1 -type f | wc -l)

  echo "The number of files in the '$dir_path': is $file_count."
  exit 1
