#!/bin/bash

echo "Enter the starting number:"
read st

echo "Enter the ending number:"
read end

echo "Prime numbers between $st and $end are:"

for ((num=st; num<=end; num++))
do
    flag=0
    for ((i=2; i<=num/2; i++))
    do
        if [ $((num%i)) -eq 0 ]
        then
            flag=1
            break
        fi
    done
    if [ $flag -eq 0 ]
    then
        echo $num
    fi
done

