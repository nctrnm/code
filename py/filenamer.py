#Matthew McGilvery
#4/11/23
#File Namer in Python

import datetime
import random

# ask for user input for topic
topic = input("Enter the topic for the file name: ")

# generate random string of length 4
random_string = ''.join(random.choices('abcdefghijklmnopqrstuvwxyz', k=4))

# get current date in the format of YYYY-MM-DD
current_date = datetime.datetime.now().strftime("%m%d%y")

# concatenate the random string, date, and topic to create file name
file_name = f"n{current_date}_{topic[:13-len(random_string)]}.txt"

print(file_name)
