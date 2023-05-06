# Script Name: txt2vox.sh
# Author: Matthew McGilvery
# Date: 5/6/2023
# Description: This script converts text or a text file to a conversational male voice file using the macOS 'say' command and 'sox' tool.
#!/bin/bash
# Define the default input text
default_text="Hello, this is a test of the conversational male voice."

# Prompt the user for the input text or file
read -p "Enter the text to convert, or specify an input file (leave blank for default text): " input

# Use the default text if no input is provided
if [[ -z "$input" ]]; then
  input="$default_text"
fi

# Check if the input is a file or text
if [[ -f "$input" ]]; then
  # Use the file as input
  input_file="$input"
  default_output="${input_file%.*}.wav"
  read -p "Enter the voice to use (e.g. Alex, Fred, Samantha): " voice
  say -v "$voice" -o temp.aiff -f "$input_file"
else
  # Use the text as input
  default_output="output.wav"
  read -p "Enter the voice to use (e.g. Alex, Fred, Samantha): " voice
  say -v "$voice" -o temp.aiff "$input"
fi

# Play a section of the 'say' output file
afplay -t 5 temp.aiff

# Prompt the user for the output file name
read -p "Enter the output file name (leave blank for default \"$default_output\"): " output

# Use the default output file name if no output is provided
if [[ -z "$output" ]]; then
  output="$default_output"
fi

# Prompt the user for the speed, pitch, and normalization values
read -p "Enter the speed value (default is 1.0): " speed
read -p "Enter the pitch value (default is 0): " pitch
read -p "Enter the normalization value (default is -1): " norm

# Use 'sox' to convert the AIFF file to a WAV file
sox temp.aiff "$output" speed "${speed:-1.0}" pitch "${pitch:-0}" norm "${norm:--1}" dither -a  

# Clean up the temporary AIFF file
rm temp.aiff

echo "Conversion complete. Output file saved as $output"