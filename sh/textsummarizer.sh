#!/bin/bash
# Author: Matthew McGilvery
# Date: 4/7/2023
# Subject: TLDR script
# Check for command-line arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 input_file output_file"
  exit 1
fi

# Ask user to choose the mode (short, medium, long) or enter a specific number of lines
echo "Choose a mode (short, medium, long) or enter a specific number of lines: "
read mode_or_num_lines

# Set the number of lines to include in the summary based on the mode selected or the specific number of lines entered
if [ $mode_or_num_lines = "short" ]; then
  num_lines=5
elif [ $mode_or_num_lines = "medium" ]; then
  num_lines=8
elif [ $mode_or_num_lines = "long" ]; then
  num_lines=13
elif [ $mode_or_num_lines -gt 0 ]; then
  num_lines=$mode_or_num_lines
else
  echo "Invalid input"
  exit 1
fi

# Use awk to extract the first $num_lines of text
awk "NR <= $num_lines" $1 > $2

# Add ellipsis to indicate that the text has been shortened
echo "..." >> $2
