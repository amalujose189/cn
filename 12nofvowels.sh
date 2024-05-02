#!/bin/bash

echo "Enter a line of text:"
read line
line=$(echo "$line" | tr '[:upper:]' '[:lower:]')
num_vowels=$(echo "$line" | grep -o '[aeiou]' | wc -l)
echo "Number of vowels in the line: $num_vowels"
