#!/bin/bash
cd /sdcard/
echo 'enter frequency 1'
read f1
echo 'enter frequency 2'
read f2
sox -S -n -c 1 -r 44100  nsin${f1}saw${f2}.flac synth 8 sin $f1 saw $f2 lowpass $(($f2 * 3)) norm -3 overdrive $(($f2-$f1))
sox nsin${f1}saw${f2}.flac -p synth pinknoise vol 0.005 | sox -m nsin${f1}saw${f2}.flac - nsin${f1}saw${f2}.flac
ffmpeg -y -i "/storage/emulated/0/nsin${f1}saw${f2}.flac" -vn -c:a pcm_s16le -ar 44100  -ac 2 "nsin${f1}saw${f2}.wav" 
termux-open nsin${f1}saw${f2}.wav