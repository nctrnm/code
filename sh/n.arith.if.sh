#Matthew McGilvery
#3.13.20
#GPL3
#nctrnm.com
#!/bin/bash
#Arithmetic Comparison Test Using If
#read two variables
read o_ne
read t_wo
#compare variables
if ((${o_ne} > ${t_wo}))
then
  echo "X is greater than Y"
elif ((${o_ne} < ${t_wo}))
then
  echo "X is less than Y"
else
  echo "X is equal to Y"
fi
