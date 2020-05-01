#Author:Matthew McGilvery
#!/bin/bash;
#log into sd card
#create 10 second audio file of saw(50-55hz)*sin(65-67hz) wave
sox -n -S -r44100 -b16  /sdcard/nsoxnye19.wav synth 10 saw 55-50 sin mix 65-67 lowpass 333 highpass 37.2 norm -3;
#open resulting fill
termux-open /sdcard/nsoxnye19.wav;#License: LGPL3
