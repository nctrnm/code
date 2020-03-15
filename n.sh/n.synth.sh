#Matthew McGilvery
#GPL 3.0
#nctrnm.com
#Sin/Saw Synth Script
#!/bin/bash
echo enter frequency 1
read f1
echo enter frequency 2
read f2
sox -S -V -n -r44100 -b16 -c1 /sdcard/nsynth$f1$f2.mp3 synth 3 sin $f1 saw $f2 lowpass 220 .88q highpass 44.1 remix - overdrive 3 norm -3 fade 00:0.33 00:2.77  dither;
play /sdcard/nsynth$f1$f2.mp3 norm -1 dither
