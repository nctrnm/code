import struct
import numpy as np
from scipy import signal as sg

sampling_rate = 44100                    ## Sampling Rate
freq = 438                               ## Frequency (in Hz)
samples = 44100                          ## Number of samples 
x = np.arange(samples)

####### sine wave ###########
y = 65*np.sin(2 * np.pi * freq * x / sampling_rate)

####### square wave ##########
# y = 92* sg.square(2 *np.pi * f *x / Fs )

####### square wave with Duty Cycle ##########
# y = 88* sg.square(2 *np.pi * f *x / Fs , duty = 0.8)

####### Sawtooth wave ########
# y = 121* sg.sawtooth(2 *np.pi * f *x / Fs )


f = open('/sdcard/nsigpytest.wav','wb')
## Instructions to play test.wav on computer
## 1. Open as Signed 8-bit on Audacity - Watch Video at https://bit.ly/2YwmN9q for instructions
## 2. Or using SoX: play -r 44.1k b 16 -c 1 /sdcard/nsigpytest.wav

for i in y:
	f.write(struct.pack('b',int(i)))
f.close()