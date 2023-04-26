#!/bin/bash

# Input file
input_file=$1

# Output file
output_file=$2

# Adjust loudness
sox $input_file -v 0.8 $output_file

# Reduce reverb
sox $output_file $output_file reverb 30 55 

# Add light fuzz
sox $output_file $output_file fuzz 13

# Apply gain
sox $output_file -G -3 $output file 
 
