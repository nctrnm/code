#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#!/bin/bash
#define variable ent as $string
ent="$string"
#test if variable ent is equal to string "$string"
#if so print "String is empty"
if [[ $ent = "$string" ]]; then
  echo "String is empty"
  #otherwise say the opposite
else
  echo "String is not empty"
fi
