#Matthew McGilvery
#3.13.2020
#GPL3 
#nctrnm.com 
#Directory Check w/ Error Forwards
#!/bin/bash
cd /storage/emulated/0/
echo "Directory Check" 
# test if /sdcard/ exists

if test -e /sdcard/; then
  echo "Alright man..." >&2
else
  echo "Yuck! Where is it??" >&2
  exit 1
fi
