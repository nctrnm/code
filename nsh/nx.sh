sox -S -n -b16  /storage/emulated/0/noutput.wav synth 15 sine 83-80 synth 15 saw mix  80-83 synth 15 tri mix 16 highpass 35 .35q dither;
