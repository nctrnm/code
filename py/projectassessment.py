# Script created by Matthew McGilvery                      # Date: 6/6/2023
# Subject: Project Assessment
#Date: 6.6.2023
import math
def geometric_average(numbers):
    """
    Calculate the geometric average of a list of numbers.
    """
    if not numbers:
        return 0
    product = math.prod(numbers)
    n = len(numbers)
    return math.pow(product, 1/n)

def convert_input(input_value, criteria):
    """
    Convert user input into standardized numbers based on the given criteria.
    """
    try:
        value = float(input_value)
    except ValueError:
        return 0
    if criteria in ("scope", "budget", "time", "perceived_quality"):
        return value / 100
    return 0

def project_assessment():
    """
    Ask the user for an analytic grade of assessment of the project based on personal discernment and external feedback.
    """
    scope_grade = convert_input(input("Enter the scope grade (0-100): "), "scope")
    time_grade = convert_input(input("Enter the time grade (0-100): "), "time")
    budget_grade = convert_input(input("Enter the budget grade (0-100): "), "budget")
    print("Please enter the perceived quality grade (0-100). Accuracy here requires a moderate level of discernment or subject expert feedback.")
    perceived_quality_grade = convert_input(input("Perceived quality grade: "), "perceived_quality")
    quality_grade = math.pow(scope_grade * time_grade * budget_grade * perceived_quality_grade, 1/4)
    assessment = geometric_average([scope_grade, time_grade, budget_grade, perceived_quality_grade, quality_grade])
    return assessment

def main():
    """
    Main function to run the project assessment script.
    """
    print("Project Assessment")
    print("------------------")
    assessment = project_assessment()
    rounded_assessment = 100*round(assessment, 2)
    print(f"Project assessment: {rounded_assessment:.2f}%")

if __name__ == "__main__":
    main()
