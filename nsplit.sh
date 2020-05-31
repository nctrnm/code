#Matthew McGilvery
#nctrnm.com
#GPL3
#Sox File Splitter 
#!/bin/bash
echo "enter folder"
read rid
echo "enter file"
read a 
echo "split filename"
read b
cd $rid
sox -r 44100 -c 1 $a ${b}.wav trim 0 21 : newfile : restart dither -f high-shibata play && ls *.wav 
