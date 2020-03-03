#Author:Matthew McGilvery
#!/bin/bash
echo 'enter what you want to change'
read ns1
echo 'enter how you want to change it'
read ns2
echo 'what file do you want to change'
read ns3
sed -i 's/$ns1/$ns2/g' $ns3
cat $ns3#License: LGPL3
