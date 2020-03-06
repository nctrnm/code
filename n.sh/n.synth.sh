#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#!/bin/bash
echo enter frequency 1
read f1
echo enter frequency 2
read f2
sox -S -V -n /sdcard/ntmp/nsynth$f1$f2.mp3 synth 3 sin $f1 saw $f2 lowpass $(("$f2" * 3 )) highpass $(("$f1" * 2)) overdrive .01 norm -3 dither
sox /sdcard/ntmp/nsynth$f1$f2.mp3 /sdcard/nsynth${RANDOM}.wav norm -1 dither