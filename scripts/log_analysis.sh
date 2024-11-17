#!/bin/bash

# Path to log files
AUTH_LOG="/var/log/auth.log"
WEB_SERVER_LOG="/var/log/web_server.log"
USB_LOG="/var/log/usb_insertion.log"

# Output file for Plaso timeline
TIMELINE_OUTPUT="/tmp/forensic_timeline.plaso"

echo "Creating timeline of events..."

# Use Plaso to process and create a timeline of logs
plaso -o $TIMELINE_OUTPUT --logfile /tmp/plaso.log $AUTH_LOG $WEB_SERVER_LOG $USB_LOG

echo "Timeline created. Results saved to $TIMELINE_OUTPUT"
