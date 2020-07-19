#Matthew McGilvery
#License: GPL 3 or Later
#link: nctrnm.com
#!/bin/bash/
#3.13.20
#Termux Backup Script
termux-setup-storage
cd /data/data/com.termux/files
tar -zcvf /sdcard/backup.termux.tar.gz home usr
