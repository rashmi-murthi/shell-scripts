#!/bin/bash 
# Update and install msmtp packages and mailutils
sudo apt-get update 
sudo apt-get install -y msmtp msmtp-mta ca-certificates mailutils

# Create msmtp config file in home directory
cat <<EOF > ~/.msmtprc
# Set default values for all accounts
defaults
auth           on
tls            on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
logfile        ~/.msmtp.log

# Gmail account
account        gmail
host           smtp.gmail.com
port           587
from           rashmi.pmurthi20@gmail.com
user           rashmi.pmurthi20@gmail.com
password       jzfvldaefqzooukf

# Set default account
account default : gmail
EOF

# Set correct permissions for the config file
chmod 600 ~/.msmtprc

# Create msmtp log file and set permissions
touch ~/.msmtp.log
chmod 600 ~/.msmtp.log

echo "msmtp configuration completed. You can now send emails using the configured Gmail account."

