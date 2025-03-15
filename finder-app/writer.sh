#!/bin/bash
if [ -z "$1" ] || [ -z "$2" ];then
	echo "Missing argument"
	exit 1
fi

file_path="$1"
content="$2"

# Create the directory if it doesn't exist
mkdir -p "$(dirname "$file_path")"

# Write the content to the file
echo "$content" > "$file_path"

