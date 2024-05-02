#!/bin/bash
echo "enter a number"
read num
a=$num
rev=0
while [ $num -ne 0 ]
do
   digit=`expr $num % 10`
   rev=`expr $rev \* 10 + $digit`
   num=`expr $num / 10`
done
if [ $a -eq $rev ]
then
    echo "$a equal to its reverse"
else
    echo "$a is not equal to its reverse"
fi
