#Matthew McGilvery
#1.27.2024
#Filename Space Remover

import os

folder = "."   # Replace with your actual folder path if needed

for root, dirs, files in os.walk(folder):
    for dir in dirs:
        new_dir = dir.replace(" ", "_")
        if new_dir != dir:
            os.rename(os.path.join(root, dir), os.path.join(root, new_dir))

    for file in files:
        new_file = file.replace(" ", "_")
        if new_file != file:
            os.rename(os.path.join(root, file), os.path.join(root, new_file))
