#!/bin/bash
# Matthew McGilvery
#Audio File Conversion with FFmpeg
#1.24.2024

### Introduction

###In this guide, we explore the process of converting MP3 files to WAV using FFmpeg. This can be beneficial for various applications, such as audio processing and optimization. By following these steps, you can enhance the discoverability of your audio content on GitHub.

### Code for Conversion

for file in *.mp3; do ffmpeg -i "$file" -acodec pcm_s16le -ar 44100 "${file%.mp3}.wav"; done
