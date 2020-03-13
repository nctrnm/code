#Matthew McGilvery
#3.8.2020
#GPL3 
#nctrnm.com 
#Bit(s) to Byte(s) Coverter
#!/bin/bash
echo 'enter bits'
read bits
bytes=$(($bits * 8))
echo "$bits bits is $bytes bytes"
