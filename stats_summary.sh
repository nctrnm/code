#Matthew McGilvery
#5/6/2023
#Stats Summary
#!/bin/bash

# Prompt the user for a file path
read -p "Enter the file path: " file_path

# Check if the file path is a CSV or XLSX file
if [[ "$file_path" =~ \.csv$ ]]; then
  # Use csvstat to output summary statistics for the CSV file
  csvstat "$file_path"

  # Calculate the sample count
  sample_count=$(csvstat --count "$file_path" | tail -n 1 | cut -d " " -f 3)

  # Calculate the mean and standard deviation
  mean=$(csvstat --mean "$file_path" | tail -n 1 | cut -d " " -f 3)
  std_dev=$(csvstat --stdev "$file_path" | tail -n 1 | cut -d " " -f 3)

  # Calculate the z critical value
  z_critical=1.28  # Change this value based on the desired confidence level

  # Calculate the margin of error
  margin_of_error=$(echo "scale=2; ($z_critical * $std_dev) / sqrt($sample_count)" | bc)

  # Output the results
  echo "Sample Count: $sample_count"
  echo "Mean: $mean"
  echo "Standard Deviation: $std_dev"
  echo "Margin of Error: $margin_of_error"

elif [[ "$file_path" =~ \.xlsx$ ]]; then
  # Convert the XLSX file to CSV using xlsx2csv and then use csvstat to output summary statistics
  xlsx2csv "$file_path" | csvstat

  # Calculate the sample count
  sample_count=$(csvstat --count - | tail -n 1 | cut -d " " -f 3)

  # Calculate the mean and standard deviation
  mean=$(csvstat --mean - | tail -n 1 | cut -d " " -f 3)
  std_dev=$(csvstat --stdev - | tail -n 1 | cut -d " " -f 3)

  # Calculate the z critical value
  z_critical=1.28  # Change this value based on the desired confidence level

  # Calculate the margin of error
  margin_of_error=$(echo "scale=2; ($z_critical * $std_dev) / sqrt($sample_count)" | bc)

  # Output the results
  echo "Sample Count: $sample_count"
  echo "Mean: $mean"
  echo "Standard Deviation: $std_dev"
  echo "Margin of Error: $margin_of_error"

else
  echo "Unsupported file format. Please provide a CSV or XLSX file."
fi
