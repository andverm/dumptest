#!/bin/bash

#clear


while read line
do
  cd "exam/$line"
  g++ test.cpp -o number10.exe
  echo $translated
  result=$( ./number10.exe )

  if (( $result == 10 ))
  then
    echo "$line: GOOD"
  else
    echo "$line: BAD (should be 10 instead of $result)"
  fi
  rm number10.exe
  cd ../..
done < "nevek.txt"

cd exam

for dir in */
do
  cd $dir
  g++ test.cpp -o number10.exe
  result=$( ./number10.exe )

  if (( $result == 10 ))
  then 
    echo "$dir: HELYES: $result"
  else
    echo "$dir: HIBAS: 10 helyett $result"
  fi

  rm number10.exe
  cd ..
done



exit
