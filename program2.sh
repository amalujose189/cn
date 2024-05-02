#!/bin/bash
#Write a Shell program to check a leap year.
#Amalu jose rollno:13
echo "enter the year to check leap year"
read y
if (( y%4==0 && y%100!=0 || y%400==0))
then 
   echo "$y is leap year"
else
   echo "$y is not leap year"
fi
