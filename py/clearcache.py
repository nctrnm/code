import glob
import os

sd_card_path = "/sdcard/"

for file_path in glob.glob(os.path.join(sd_card_path, "*")):
    if os.path.isfile(file_path) and len(os.path.basename(file_path)) > 31:
        new_filename = os.path.basename(file_path)[:31] + os.path.splitext(os.path.basename(file_path))[-1]
        os.rename(file_path, os.path.join(os.path.dirname(file_path), new_filename))
