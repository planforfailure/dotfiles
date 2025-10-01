Onboarding cnodes into PrivX with Bash Script

This guide explains how to onboard target hosts (cnodes) into PrivX using a bash script for automated setup and configuration.

# Prerequisites

- PrivX environment is up and running.
- SSH access credentials to target cnodes with appropriate privileges.
- SSH key-based or password authentication available for initial connection.
- Bash shell environment on the machine running the script.

Overview

The included bash script connects to the target cnode, installs and configures the PrivX host deployment script, and registers the cnode with PrivX for secure certificate-based access.

`./onboard_cnode.sh <cnode_ip_or_hostname> <ssh_username> <ssh_password_or_private_key_path>`

- <cnode_ip_or_hostname>: IP address or hostname of the target cnode.
- <ssh_username>: SSH user with administrative privileges on the cnode.
- <ssh_password_or_private_key_path>: SSH password or path to private key file.

Example Script: onboard_cnode.sh
```bash
  #!/bin/bash

# Basic usage check
if [ "$#" -lt 3 ]; then
  echo "Usage: $0 <cnode_ip_or_hostname> <ssh_username> <ssh_password_or_private_key_path>"
  exit 1
fi

CNODE_HOST=$1
SSH_USER=$2
AUTH=$3

# Check if AUTH is a file (private key) or password
if [ -f "$AUTH" ]; then
  SSH_OPTION="-i $AUTH"
else
  SSH_OPTION=""
  # Using sshpass for password-based ssh; ensure sshpass is installed
  if ! command -v sshpass &> /dev/null; then
    echo "sshpass required for password authentication. Install it and rerun."
    exit 1
  fi
fi

# Define PrivX host deployment script URL or local path
PRIVX_DEPLOY_SCRIPT_URL="https://your-privx-server/scripts/privx-host-deploy.sh"

echo "Onboarding cnode $CNODE_HOST ..."

# Download and execute the PrivX host deployment script remotely
if [ -f "$AUTH" ]; then
  ssh -o StrictHostKeyChecking=no $SSH_OPTION $SSH_USER@$CNODE_HOST "curl -sfL $PRIVX_DEPLOY_SCRIPT_URL | bash -s -- --register"
else
  sshpass -p "$AUTH" ssh -o StrictHostKeyChecking=no $SSH_USER@$CNODE_HOST "curl -sfL $PRIVX_DEPLOY_SCRIPT_URL | bash -s -- --register"
fi

if [ $? -eq 0 ]; then
  echo "Cnode $CNODE_HOST successfully onboarded into PrivX."
else
  echo "Failed to onboard cnode $CNODE_HOST."
fi
```
## Notes

- Modify the PRIVX_DEPLOY_SCRIPT_URL to point to your actual PrivX deployment script location.
-  The deployment script usually handles installing necessary certificates and configuration for certificate-based authentication in PrivX.
-  The script supports both SSH key and password authentication; for passwords, sshpass is required.
-  Ensure firewall allows HTTPS and SSH traffic between PrivX and the cnode.

This README and script offer a practical way to batch onboard cnodes into PrivX securely and efficiently. For larger environments, consider integrating with Ansible or other automation tools.

