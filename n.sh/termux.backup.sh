#Author: Matthew McGilvery
#License: GPL 3 or Later
#link: nctrnm.com
#!/bin/bash/
#Termux Backup Script
termux-setup-storage
cd /data/data/com.termux/files
tar -zcvf /sdcard/n.tback.tar.gz home usr
