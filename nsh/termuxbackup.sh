#!/bin/bash
termux-setup-storage
#go to termux base directory
cd /data/data/com.termux/files
#backing up files
tar -zcvf /sdcard/termux-backup.tar.gz home usr