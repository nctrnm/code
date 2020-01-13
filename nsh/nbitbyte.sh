
#convert bit to byte
echo 'enter bits'
read bits
bytes=$(($bits * 8))
echo "$bits bits is $bytes bytes"