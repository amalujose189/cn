#!/bin/bash
#Write a Shell program to find the area and circumference of a circle.
echo "radius of the cicle"
read r
#a=$((314*$r*$r/100))
#p=$((628*$r/100))
a=`expr  3.14*$r*$r|bc`
p=`expr  2*3.14*$r|bc`
echo " area of circle= $a"
echo " circumference of circle = $p"
