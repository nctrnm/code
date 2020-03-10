#Author:Matthew McGilvery
#License: GPL3 OR LATER
#!/bin/bash
#nctrnm.com
#Git Sync
#pull remote updates
cd /sdcard/n.git/ && pwd && hub pull
#add&commit&push local changes to remote;
hub add --all && hub commit -a &&  hub push
$date +%b +%d|uniq|sort
