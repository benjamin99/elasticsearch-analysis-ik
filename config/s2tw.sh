#!/bin/sh

for file in $(ls *.dic)
do
  echo $file
  opencc -c ./s2twp.json -i $file -o "$file"_tw
  mv "$file"_tw $file  
done
