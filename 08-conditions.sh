#!/bin/bash

Number=$1

if [ $Number -gt 20 ]; then 
  echo "Given number : $Number is greater than 20"
  
  elif [ $Number -eq 20 ]; then

  echo "Given number $Number is equal to 20" 
else 
  echo "Given Number :$Number is less than 20"
 fi