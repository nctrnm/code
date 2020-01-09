#!/bin/bash
sox -n  nsawtri50.mp3 synth 3 saw 50 synth 5 tri 50 && sox nsawtri50.mp3 -c1  nsawtri50.mp3 sinc -441.441 sinc 444.1 && play nsawtri50.mp3
ffmpeg -i -ac 1 -ab 44100 nsawtri50.mp3 nsawtri50.wav
