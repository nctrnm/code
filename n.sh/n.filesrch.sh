#Author:Matthew McGilvery
#!/bin/bash
echo 'what file type would you like?'
read type
#asks for desired file type variable type
echo "where would you like me to look for $type files?"
#asks for directory variable loca in which to search 
read loca| cd $loca
#enters loca
for f in *."$type";  do echo ${f}; done;
#prints $type files in $loca#License: LGPL3
