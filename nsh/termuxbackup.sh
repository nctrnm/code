#!/bin/bash;
echo 'go to termux base directory'
cd /data/data/com.termux/files
echo 'backing up files'
tar -zcvf /sdcard/termux-backup.tar.gz home usr