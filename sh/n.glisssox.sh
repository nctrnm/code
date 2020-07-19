#Author:Matthew McGilvery
#!/bin/bash;
sox -S -n -c1 /sdcard/nranglis.mp3 synth 10 sin 60-63 -m synth 10 saw 61 fade 0 2 .1 norm -1#License: LGPL3
