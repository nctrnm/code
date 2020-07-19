#Matthew McGilvery
#6.23.2020
#Folder Mix Experiment Script
#nctrnm.com
cd wip/sound/
mkdir ../k/ && for f in ./K06*;
do ffmpeg -i "$f" -ac 1 -ar 44100 -ab 320000 ../k/"${f%_.wav.wav}" -y;
done
sox -SV -r44.1k -b16 -c1 k.wav l.wav norm -12 flanger .3 .89 90 45 .30 sin linear overdrive 13 21 reverb 42 84 50 90 silence 1 0 4.2 -1 0 4.2 1 0 5 -1 0 4.5 remix - noisered k .01 speed .89 norm -6 overdrive 5 reverb 90 50 60 40 sinc 45-11000 norm -3 dither -f low-shibata
cd /sdcard/ && pwd 
