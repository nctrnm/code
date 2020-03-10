#Author:Matthew McGilvery
#License: GPL3 OR LATER
#!/bin/bash
#nctrnm.com
#Git Sync Script

#Pull remote updates
cd /sdcard/n.git/ && pwd && hub pull
#Add&commit&push local changes to remote;
hub add --all && hub commit -a &&  hub push
cd /sdcard/
