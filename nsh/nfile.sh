#!/bin/bash
echo 'enter file'
read nfile
ffmpeg -y -i $nfile -vn -c:a libmp3lame -ab 320k -ar 44100 -f mp3 $nfile.mp3