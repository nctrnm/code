#!/bin/bash
cd /sdcard/
# Create background noise profile from mp3
/usr/bin/sox noise.mp3 -n noiseprof noise.prof

# Remove noise from mp3 using profile
/usr/bin/sox input.mp3 output.mp3 noisered noise.prof 0.21

# Remove silence from mp3
/usr/bin/sox input.mp3 output.mp3 silence -l 1 0.3 5% -1 2.0 5%

# Remove noise and silence in a single command
/usr/bin/sox input.mp3 output.mp3 noisered noise.prof 0.21 silence -l 1 0.3 5% -1 2.0 5%

# Batch process files
/usr/bin/find . -type f -name "*.mp3" -mmin +30 -exec sox -S --multi-threaded -buffer 131072 {} /path/to/output/{} noisered noise.prof 0.21 silence -l 1 0.3 5% -1 2.0 5% \;

# Remove insignificant files
/usr/bin/find . -type f -name "*.mp3" -mmin +30 -size -500k -delete