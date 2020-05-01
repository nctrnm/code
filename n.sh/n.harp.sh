#Matthew McGilvery
#GPL 3 or Later
#nctrnm.com
#3.8.2020
#Strange Harp
f='/sdcard/aharp.wav'
sox -nSb 16 -r44100 -c1  /sdcard/aharp.wav synth $((RANDOM/333))  pl F2 pl G2 pl C3 pl D3 pl E3 pl F3 pl F#3 pl G3 pl A3 pl A#3 pl B3 pl C4 pl C#1 pl D4 pl  pl  pl sin F#1 pl G1 pl G#1 pl A3 pl A#2 pl B#1 pl C2  pl C#2 pl D1 pl D#2 pl E3 pl F2 pl F#3 pl G3 pl G#1 pl B2 pl A#1 pl B2 pl C1  : brownnoise :  norm -3  delay 0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.25  remix - fade 4.84 6 .5 overdrive 3  norm -3 dither && play ${f};
