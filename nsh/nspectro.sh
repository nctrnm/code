#Matthew McGilvery
#2.9.2020
#LGPL3orlater
#!/bin/bash
#log into work folder
cd /sdcard && pw
#gather file location loc
echo 'enter file location'
read loc
#generate pseudorandomly named spectrogram file with 88db noise floor
sox -S $loc -n spectrogram -z 88 -o /sdcard/ntmp n${RANDOM}.png
#output png files in working directory
dir *.png

