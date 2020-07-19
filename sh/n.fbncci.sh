#Author:Matthew McGilvery
#!/bin/bash

# Program for Fibonacci Series 
   
# Static input for N 
echo 'enter # of Fibonnaci values'
read nfib
N=$nfib
  
# First Number of the 
# Fibonacci Series 
a=1
  
# Second Number of the 
# Fibonacci Series 
b=1  
   
echo "The Fibonacci series is : "
for (( i=0; i<N; i++ )) 
do
    echo -n "$a "
    fn=$((a + b)) 
    a=$b 
    b=$fn
done
exit;
# End of for loop
#License: LGPL3
