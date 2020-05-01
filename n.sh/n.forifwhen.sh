#Matthew McGilvery
#LGPL3orlater
#conditionals
#for

for (( a=0; a < 5 ; a++ )); 
do print(a); 
done
#while
a=0
while a<6; 
  do echo $a && a+=1;
done                         
#until
a=0
until a=5;
  do echo $a && a+=1;
done

#if

if list; then list; [ elif list; then list; ] ... [ else list; ] fi

