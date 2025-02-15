#!/bin/bash

# Define new file paths
file1="/home/ubuntu/assignment-01-CYXNBNBNB/questions.csv"
file2="/home/ubuntu/assignment-01-CYXNBNBNB/question_tags.csv"

# Check if files exist
if [ ! -f "$file1" ]; then
    echo "Error: File '$file1' not found!"
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "Error: File '$file2' not found!"
    exit 1
fi

# Count the number of lines containing "python" (case insensitive)
count1=$(grep -i "python" "$file1" | wc -l)
count2=$(grep -i "python" "$file2" | wc -l)

# Print results
echo "File: $file1 -> Lines containing 'python': $count1"
echo "File: $file2 -> Lines containing 'python': $count2"
echo "Total lines containing 'python': $((count1 + count2))"
