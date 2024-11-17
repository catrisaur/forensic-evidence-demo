#!/bin/bash

# Script to simulate database query execution
DATABASE="bank_db"
USER="adam"
PASSWORD="password"
HOST="bank-server"

echo "Connecting to database $DATABASE on $HOST as $USER..."

# Simulate running a query that exposes sensitive customer data
mysql -u $USER -p$PASSWORD -h $HOST $DATABASE -e "SELECT account_number, transaction_details FROM transactions WHERE status='pending';" >> /tmp/sensitive_data.txt

echo "Query results saved to /tmp/sensitive_data.txt"
