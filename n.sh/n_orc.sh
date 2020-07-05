#Matthew McGilvery
#7.5.2020
#Synth Orchestra Experimentation thing-y
#nctrnm.com
#!/bin/bash
mkdir /sdcard/wip/j27/ && cd /sdcard/wip/j27/
sox   -n ./n.orc.wav  synth .5 sin D2  sin C1  : synth 1 sin E3 sin  D2 : synth  .78 sin E3 : synth .5 sin D3  sin C1  : synth 1 sin E3 sin  G2 : synth  .78 sin A3 : synth .5 sin D2  sin C1  : synth 1 sin F3 sin  E3 : synth  .78 sin F2
: synth .5 sin D3  sin C1  : synth 1 sin E3 sin  G2 : synth  .78 sin G3
: synth .75 sin E4  sin B2  : synth 1 sin D3 sin  G2 : synth  .78 sin D3
: synth .75 sin E4  sin B2  : overdrive 8  synth .89 sin D3 sin  G2 fade h 0.1 1 0.1: overdrive 8 synth  .64 sin D3 tri D1 fade h 0.1 1 0.1 : synth .75 sin E4  sin B2 sin D4  fade h 0.1 1 0.1: synth .89 sin D3 tri G1 sin  G2 fade h 0.1 1 0.1: synth  .64 sin D3 tri D1 fade h 0.1 1 0.1 : synth 1 pl G2 B1 E3 E2  fade h 0.1 1 0.1:  synth  .78 sin G3 sin D2 fade h 0.1 1 0.1: synth .34 tri D2 sin G1 fade h 0.1 1 0.1: synth  .64 sin D3 tri D1 fade h 0.1 1 0.1: synth  .78 sin G3 sin D2 fade h 0.1 1 0.1: synth .34 tri D2 sin G1 remix - hilbert -n 32767 reverb 50 delay 0 1
mpv n.orc.wav  
