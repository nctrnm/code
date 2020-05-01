#Matthew McGilvery
#3.13.2020
#GPL3 
#Multiplication Function Passing
#nctrnm.com 
#return arg 1 * arg2
#!/bin/bash 
cd /storage/emulated/0
multiply() {
  return $(($1 * $2))
}
echo "enter 2 values" 
echo "format: number1 number 2"
read o_ne t_wo
echo(multiply ${o_ne} ${t_wo}) 
