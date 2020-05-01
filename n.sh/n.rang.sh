#Author:Matthew McGilvery
#!/bin/bash

# random integer greater than a lower # bound, test to discard all nums 
# below that.
# initialize variable num and while 
# variable is less than variable 
# floor #generate random integer 
# until variable num is greater than # variable floor.
echo 'choose a number floor'
read floor
num=0   
while [ "$num" -le $floor ]
do
  num=$RANDOM
done
echo "Random num greater than $floor: $num."
exit 0#License: LGPL3
