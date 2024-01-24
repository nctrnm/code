"""
QR Code Generator Script
Author: Matthew McGilvery
Date: 1.22.24
Link: http://nctrnm.com
This script allows the user to input a URL and choose a location to save the generated QR code.
The QR code is generated using the qrcode library in Python.
"""

import qrcode
import os

def generate_qr_code():
    # Get user input for URL
    url = input("Enter the URL for the QR code: ")

    # Get user input for location
    location = input("Enter the location to save the QR code (press Enter for current directory): ").strip()
    if not location:
        location = os.getcwd()

    # Generate QR code
    qr = qrcode.QRCode(
        version=None,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    qr.add_data(url)
    qr.make(fit=True)

    # Create an image from the QR Code instance
    img = qr.make_image(fill_color="black", back_color="white")

    # Save or display the image
    file_name = "qrcode_" + url.replace("://", "_").replace("/", "_") + ".png"
    file_path = os.path.join(location, file_name)
    img.save(file_path)

    # Provide output messages
    print("QR Code generated successfully!")
    print(f"File saved as: {file_name}")
    print(f"Location: {os.path.abspath(file_path)}")

if __name__ == "__main__":
    generate_qr_code()
