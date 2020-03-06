#!/bin/bash
#read 2 variables
read one
read two
#compare variables
if (($one > $two))
then
  echo "X is greater than Y"
elif (($one < $two))
then
  echo "X is less than Y"
else
  echo "X is equal to Y"
fi