"""
Name: Matthew McGilvery + ChatGPT3.5
Date: 4/22/2023
Topic: Sample size calculator for hypothesis testing in Python 3

This Python script takes user inputs to determine whether a representative or a random observation set is necessary and the sample size required for quantitative and qualitative hypothesis testing in audio design research.
"""

import math
from scipy import stats

# Get user inputs
pop_size = int(input("Enter the population size: "))
conf_level = float(input("Enter the desired confidence level (as a decimal): "))
margin_error = float(input("Enter the desired margin of error (as a decimal): "))
data_type = input("Enter the data type (quantitative or qualitative): ")
test_type = input("Enter the test type (one-tailed or two-tailed): ")

# Determine sample size based on user inputs
if data_type == "quantitative":
    # Determine the z-score based on the test type and confidence level
    if test_type == "one-tailed":
        z_score = abs(round(stats.norm.ppf(conf_level), 2))
    elif test_type == "two-tailed":
        z_score = abs(round(stats.norm.ppf(conf_level/2), 2))
    else:
        print("Invalid test type.")
        exit()

    # Calculate the required sample size
    sample_size = int(((z_score**2) * (0.5*0.5)) / ((margin_error**2) * (pop_size - 1) + (z_score**2) * (0.5*0.5)))

    # Define null and alternative hypotheses
    null_hypothesis = "There is no significant difference between the population mean and the sample mean."
    alt_hypothesis = "There is a significant difference between the population mean and the sample mean."

    # Calculate standard error and margin of error
    standard_error = math.sqrt((0.5*0.5) / sample_size)
    margin_of_error = round(z_score * standard_error, 2)

elif data_type == "qualitative":
    # Determine the z-score based on the test type and confidence level
    if test_type == "one-tailed":
        z_score = abs(round(stats.norm.ppf(conf_level), 2))
    elif test_type == "two-tailed":
        z_score = abs(round(stats.norm.ppf(conf_level/2), 2))
    else:
        print("Invalid test type.")
        exit()

    # Calculate the required sample size
    p = 0.5
    q = 1 - p
    sample_size = int(((z_score**2) * p * q) / ((margin_error**2) * (pop_size - 1) + (z_score**2) * p * q))

    # Define null and alternative hypotheses
    null_hypothesis = "There is no significant difference between the population proportions and the sample proportions."
    alt_hypothesis = "There is a significant difference between the population proportions and the sample proportions."

    # Calculate standard error and margin of error
    standard_error = math.sqrt((p*q) / sample_size)
    margin_of_error = round(z_score * standard_error, 2)

else:
    print("Invalid data type.")
    exit()

# Determine if a representative observation set is necessary
if sample_size >= 0.05 * pop_size:
    observation_set = "a representative observation set"
else:
    observation_set = "a random observation set"

# Print results
print(f"To test the hypothesis that:\n")
print(f"Null hypothesis: {null_hypothesis}\n")
print(f"Alternative hypothesis: {alt_hypothesis}\n")
print(f"Using a {conf_level} confidence level and a {margin_error} margin of error, we need a sample size of {sample_size} from {observation_set}.\n")
print(f"The standard error is {standard_error:.4f} and the margin of error is +/- {margin_of_error:.4f}.")

