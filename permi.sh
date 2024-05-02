#!/bin/bash
#Author: AMALU JOSE
#RollNo: 23MCA013
for file in *; do
 if [[ ! -x "$file" ]]; then
  chmod +x "$file"
  echo "Made $file executable"
 fi
done
