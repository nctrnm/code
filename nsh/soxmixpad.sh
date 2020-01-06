#!/bin/bash

#output files combined with .35 seconds of space between

sox x.wav -p pad 0 .35|sox - x2*.wav xa.wav