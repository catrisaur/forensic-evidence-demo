#!/bin/bash

# Path to where the data will be exfiltrated to on the USB device
USB_PATH="/media/usb"
SENSITIVE_DATA="/tmp/sensitive_data.txt"

echo "Exfiltrating sensitive data to external USB..."

# Copy data to USB
cp $SENSITIVE_DATA $USB_PATH/

# Log the data exfiltration
echo "$(date) - Data exfiltrated to USB at $USB_PATH" >> /tmp/data_exfiltration.log

echo "Data successfully exfiltrated to USB device."
