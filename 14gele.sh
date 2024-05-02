#!/bin/bash
#Amalu Jose
echo "Enter numbers separated by spaces:"
read -a numbers
smallest=${numbers[0]}
largest=${numbers[0]}

# Loop through the numbers to find the smallest and largest
for num in "${numbers[@]}"
do
    if [ $num -lt $smallest ]; then
        smallest=$num
    fi

    if [ $num -gt $largest ]; then
        largest=$num
    fi
done

# Display the smallest and largest numbers
echo "Smallest number is: $smallest"
echo "Largest number is: $largest"

