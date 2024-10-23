#!/bin/bash

echo "Tha name of the file is..."
read file_name
if [ -e "$file_name" ]; then
echo ".. and it exists."
else
echo "try again..";
fi
