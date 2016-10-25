#! /bin/bash

# Write the host in the windows/hosts file
# - Use COMPUTERNAME ?
# - How to fetch ip ?

cd windows

vault_file=group_vars/windows/vault
echo vault_ansible_user: $USERNAME>$vault_file

read -s -p "Enter your Windows password: " password
echo vault_ansible_password: $password>>$vault_file

# Encrypt username and password
./run_win.sh ansible-vault encrypt $vault_file

# Simple ping command
./run_win.sh ansible windows -i hosts -m win_ping

# Run the windows playbook
#./run_win.sh ansible-playbook -i hosts windows.yml --ask-vault-pass
