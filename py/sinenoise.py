# Name: Matthew McGilvery
# Date: April 11, 2023
# Subject: Audio signal generation using Python

import wave
import math
import struct
import random
import argparse
from itertools import *

# Sine Wave Generation
def sine_wave(frequency=440.0, framerate=44100, amplitude=0.5):
    period = int(framerate / frequency)
    if amplitude > 1.0: amplitude = 1.0
    if amplitude < 0.0: amplitude = 0.0
    lookup_table = [float(amplitude) * math.sin(2.0*math.pi*float(frequency)*(float(i%period)/float(framerate))) for i in range(period)]
    return (lookup_table[i%period] for i in count(0))

# Saw Wave Generation
def saw_wave(frequency=440.0, framerate=44100, amplitude=0.5):
    period = int(framerate / frequency)
    if amplitude > 1.0: amplitude = 1.0
    if amplitude < 0.0: amplitude = 0.0
    lookup_table = [float(amplitude) * (2.0 * ((float(i%period)/float(framerate)*frequency) % 1.0) - 1.0) for i in range(period)]
    return (lookup_table[i%period] for i in count(0))
#Pink Noise Generator
def pink_noise(amplitude=0.5):
    # Define filter coefficients
    b0, b1, b2, b3, b4 = 0, 0, 0, 0, 0
    a0, a1, a2, a3, a4 = 0.049922035, -0.095993537, 0.050612699, -0.004408786, 0.000171740

    # Generate white noise
    wn = [random.uniform(-1, 1) for _ in range(8192)]

    # Apply pink noise filter
    pn = [0.0] * len(wn)
    for i in range(len(wn)):
        pn[i] = b0 * wn[i] + b1 * wn[i-1] + b2 * wn[i-2] + b3 * wn[i-3] + b4 * wn[i-4]
        pn[i] = pn[i] + a1 * pn[i-1] + a2 * pn[i-2] + a3 * pn[i-3] + a4 * pn[i-4]
        pn[i] *= 0.1

    # Normalize and scale to amplitude
    pn = [float(amplitude) * p / max(pn) for p in pn]

    return (pn[i] for i in count(0))


# Square Wave Generation
def square_wave(frequency=440.0, framerate=44100, amplitude=0.5):
    period = int(framerate / frequency)
    if amplitude > 1.0: amplitude = 1.0
    if amplitude < 0.0: amplitude = 0.0
    lookup_table = [float(amplitude) * ((float(i%period)/float(period)) <= 0.5) * 2.0 - 1.0 for i in range(period)]
    return (lookup_table[i%period] for i in count(0))

# White Noise Generation
def white_noise(amplitude=0.5):
    return (float(amplitude) * random.uniform(-1, 1) for _ in count(0))

# User Input
parser = argparse.ArgumentParser(description='Generate audio files.')
parser.add_argument('-t', '--type', help='type of sound (sine, sawtooth, square, pink, or white)', required=True)
parser.add_argument('-f', '--frequency', help='frequency of sound (in Hz)', required=True, type=float)
parser.add_argument('-d', '--duration', help='duration of sound (in seconds)', required=True, type=float)
parser.add_argument('-o', '--output', help='output file name', required=True)
args = parser.parse_args()

# Generate Audio
if args.type == 'sine':
    samples = sine_wave(frequency=args.frequency, amplitude=0.5)
elif args.type == 'sawtooth':
    samples = sawtooth_wave(frequency=args.frequency, amplitude=0.5)
elif args.type == 'square':
    samples = square_wave(frequency=args.frequency, amplitude=0.5)
elif args.type == 'white':
    samples = white_noise(amplitude=0.5)
elif args.type == 'pink':
    samples = pink_noise(amplitude=0.5)
else:
    print("Invalid sound type. Please choose 'sine', 'sawtooth', 'square', 'pink', or 'white'.")
    sys.exit()

# Open Output File
sample_width = 2
nchannels = 1
samp_rate = 44100
nframes = int(samp_rate * args.duration)
comptype = "NONE"
compname = "not compressed"
wav_file = wave.open(args.output, 'w')
wav_file.setparams((nchannels, sample_width, samp_rate, nframes, comptype, compname))

# Write Audio Frames to File
for i in range(nframes):
    sample = next(samples)
    wav_file.writeframes(struct.pack('h', int(sample * 32767.0)))

# Close Output File
wav_file.close()

print("Audio file generated:", args.output) 
