#!/bin/bash


new_content='#include<stddef.h>'


for file in *.c; do
    # Step 1: Read the existing content into a variable
    existing_content=$(cat "$file")

    # Step 2: Add the new content at the beginning
    updated_content="$new_content"$'\n'"$existing_content"

    # Step 3: Write the updated content back to the file
    echo "$updated_content" > "$file"
done
