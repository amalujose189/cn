#!/bin/bash
echo "enter the input"
read number
sum=0
while ((number!=0))
do
digit=$((number%10))
sum=$((sum+digit*digit))
number=$((number/10))
done
echo "sum of square of the digit is $sum"
