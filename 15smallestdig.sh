#!/bin/bash
echo "Enter a number:"
read number
smallest=9
while [ $number -gt 0 ]; do
    digit=$((number % 10))
    if [ $digit -lt $smallest ]; then
        smallest=$digit
    fi
    number=$((number / 10))
done
echo "Smallest digit in the entered number is: $smallest"

