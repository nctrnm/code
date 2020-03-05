#Author:Matthew McGilvery
#!/bin/bash
#ask folder to search (whr)
echo 'where?'
read whr
#go to whr
cd $whr
#convert all mp3 files in whr
#to wav files (same name) 
for name in *.mp3; do
  ffmpeg -i "$name" "${name%.*}.wav" 
done#License: LGPL3
