#!/bin/bash

echo "Enter the coefficients of the quadratic equation (a b c):"
read a b c

d=$((b*b - 4*a*c))

if [ $d -lt 0 ]; then
   echo "Quadratic equation has no real roots."
else
  root1=$(echo "scale=2; (-$b + sqrt($d)) / (2*$a)" | bc)
  root2=$(echo "scale=2; (-$b - sqrt($d)) / (2*$a)" | bc)
  echo "Roots of the quadratic equation are: $root1 and $root2"
fi


