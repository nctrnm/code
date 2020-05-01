#Author:Matthew McGilvery
#!/bin/bash
echo 'enter freq 1'
read f1
echo 'enter freq 2'
read f2
sox -n  nreesex.wav synth 3 saw $f1 synth 5 sin $f2 && sox nreesex.wav -c1  nreesex.wav lowpass 441.441 && play nreesex.wav
#License: LGPL3
