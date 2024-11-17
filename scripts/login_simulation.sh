#!/bin/bash

# Simulate an unauthorised login to the bank’s server
USER="adam"           # Suspect's username
SERVER="bank-server"  # Server name or IP address

echo "Attempting unauthorised login as $USER on $SERVER..."

# Simulate login attempt (using 'ssh' as an example)
sshpass -p "incorrect_password" ssh $USER@$SERVER << EOF
echo "Login successful!"  # Simulate successful login after incorrect password
EOF

# Simulate unauthorised activity
echo "Executing unauthorised database query..."
mysql -u $USER -p'password' -h $SERVER -e "SELECT * FROM customers WHERE status='active';" >> /tmp/query_output.txt

echo "Unauthorised query executed. Output saved to /tmp/query_output.txt"
