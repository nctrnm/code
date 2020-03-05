#Author:Matthew McGilvery
#return arg 1 * arg2
multiply() {
  return $(($1 * $2))
}
 
multiply 5 6
echo $?
#method 2
multiply() {
  echo -n $(($1 * $2))
}
 
echo $(multiply 5 6)#License: LGPL3
