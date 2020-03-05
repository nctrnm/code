#Author:Matthew McGilvery
#License: LGPL3 OR LATER
#!/bin/bash
$h
#pull any remote updates
hub pull
#add local files
hub add --all; hub push
#commiting and pushing local changes to HEADfile;
hub commit -a; hub push
#log changes to logfile
hub log|uniq > /sdcard/n.doc/ngitl.txt
#print February git logs sorted in reverse chronological order (most recent at bottom)
cat /sdcard/n.docs/ngitl.txt|grep -e "$(echo "$(date +%b) $(date +%d)")"|uniq|sort
