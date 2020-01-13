#!/bin/bash
#general waveform of musical note
#wave = sin[f*2pi*t]
npi=$(echo "(3.142*2)" | bc -l)
echo 'choose frequency'
read nfrq
echo 'choose time in seconds'
read ntime
echo 'calculate degrees in radians'
nwave=$(echo "($nfrq*$npi*$ntime)" | bc -l)
echo 'print waveform angle'
qalc sin$nwave
