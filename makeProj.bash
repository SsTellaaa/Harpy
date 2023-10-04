#!/bin/bash

passCode=0

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <language_code>"
    passCode=1
    exit 1
fi

# Check the language code and create the corresponding project
case "$1" in
    1)
        language="Java"
        extension="java"
        ;;
    2)
        language="Python"
        extension="py"
        ;;
    3)
        language="Kotlin"
        extension="kt"
        ;;
    *)
        echo "Unsupported language code: $1"
        exit 1
        ;;
esac

# Create the project directory and source file
project_dir="UserProject"
src_dir="$project_dir/src"
main_file="main.$extension"

mkdir -p "$src_dir" && echo "// Here goes your $language code, have fun debugging!" >> "$src_dir/$main_file" && echo "This is temp, use this for documentation or delete." >>  "$src_dir"temp.md
echo "Project for $language created in $project_dir"
