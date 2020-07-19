#!/bin/bash/
#Matthew McGilvery
#3.1.2020
#GPL3orLater
#Trapezoidal-Sinusoidal Tone Generator
#gather trapezoidal-sinusoidal synth variables
read f1_
read f2_
read len_
read rev_
read hfd_
read rs_
read std_
reas pd_
read g_



sx -n   -c1 /sdcard/n${RANDOM}.tsynth.wav  synth $len_   trapez $f1_ sin $f2_ lowpass 444 overdrive $((f2_/f1_)) reverb $rev_ $hfd_ $rs_ $std_ $pd_ $g_  flanger .$((RANDOM/8)) dither|play -
