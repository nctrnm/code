#Author:Matthew McGilvery
#!/bin/bash
#go to hq
cd /sdcard
#for argument m, output m
for arg in "$@" ; 
do
  echo "$arg"
done;#License: LGPL3
