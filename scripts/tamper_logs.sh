#!/bin/bash
# Simulate log tampering

LOG_FILE="/var/log/tamper_logs.log"
SYSLOG="/var/log/syslog"

echo "[INFO] $(date) - Log tampering initiated" >> "$LOG_FILE"

# Modify system logs with normal-seeming logs
echo "System boot 2025-02-11 09:30:00" >> "$SYSLOG"
echo "sshd[1234]: Accepted password for user from 192.168.1.100 port 22 ssh2" >> "$SYSLOG"
echo "systemd[1]: Started OpenSSH Server Daemon." >> "$SYSLOG"
echo "cron[1234]: (root) CMD (/path/to/important_script.sh)" >> "$SYSLOG"
echo "systemd[1]: Mounted /mnt/external_drive." >> "$SYSLOG"
echo "dmesg[1234]: usb 2-1: new high-speed USB device number 5 using xhci_hcd" >> "$SYSLOG"
echo "apt-get[1234]: installed package xyz" >> "$SYSLOG"
echo "login[1234]: pam_unix(login:session): session opened for user user_name by (uid=0)" >> "$SYSLOG"
echo "audit[1234]: user 'root' modified file '/etc/passwd'" >> "$SYSLOG"
echo "sshd[1234]: Accepted public key for user from 192.168.1.101 port 22" >> "$SYSLOG"
echo "login[1234]: pam_unix(login:session): session closed for user user_name" >> "$SYSLOG"

if grep -q "Accepted password for user" "$SYSLOG"; then
    echo "[SUCCESS] $(date) - Logs successfully tampered" >> "$LOG_FILE"
else
    echo "[ERROR] $(date) - Log tampering failed" >> "$LOG_FILE"
fi

echo "[INFO] $(date) - tamper_logs.sh execution completed" >> "$LOG_FILE"
