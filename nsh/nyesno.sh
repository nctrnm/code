#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#!/bin/bash
echo 'enter y/Y or n/N'
read yynn
if [ $yynn == 'y' ]
then 
  echo 'YES' 
elif [ $yynn == 'Y' ]
then
  echo 'YES'
else
  echo 'NO'
fi