#!/bin/bash

# The USB drive is mounted at /media/usb
USB_PATH="/media/usb"
DATA_FILE="/tmp/sensitive_data.txt"
LOG_FILE="/tmp/usb_insertion.log"

echo "Copying sensitive data to USB drive..."
cp $DATA_FILE $USB_PATH/

# Log the USB activity
echo "$(date) - Copied $DATA_FILE to USB" >> $LOG_FILE

echo "Data copied to USB device at $USB_PATH"

# Simulate data exfiltration by running another script from the USB device (this could be malicious)
echo "Running data exfiltration script from USB..."
bash $USB_PATH/data_exfiltration_script.sh
