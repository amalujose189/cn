#!/bin/bash
echo "enter the size"
read size
echo "enter the elements"
oddsum=0
evensum=0
for((i=0;i<size;i++))
do
   read a[i]
   if((a[i]%2==0))
    then
      evensum=$(($evensum+${a[i]}))
    else
      oddsum=$(($oddsum+${a[i]}))
    fi

done
echo "sum of oddnumbers=$oddsum"
echo "sum of even number=$evensum"


