#!/bin/bash

# Script Name: text-to-conversational-male-voice.sh
# Author: Matthew McGilvery
# Date: 4/3/2023
# Description: This script converts text or a text file to a conversational male voice file using the macOS 'say' command and 'sox' tool.

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
  say -v "Alex" -o temp.aiff -f "$input_file"
else
  # Use the text as input
  default_output="output.wav"
  say -v "Alex" -o temp.aiff "$input"
fi

# Prompt the user for the output file name
read -p "Enter the output file name (leave blank for default \"$default_output\"): " output

# Use the default output file name if no output is provided
if [[ -z "$output" ]]; then
  output="$default_output"
fi

# Use 'sox' to convert the AIFF file to a WAV file
sox temp.aiff "$output"

# Clean up the temporary AIFF file
rm temp.aiff

echo "Conversion complete. Output file saved as $output"
