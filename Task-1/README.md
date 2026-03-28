# Task 1: Server Setup and SSH Configuration

## Objective
Configure secure SSH access using key-based passwordless authentication.

## Steps

### 1. Check VM IP Address
ip a

### 2. Generate SSH Key (on local machine)
ssh-keygen -t rsa

### 3. Copy SSH Key to VM
ssh-copy-id akshatha@192.168.56.101

### 4. Login without password
ssh akshatha@192.168.56.101

## Expected Outcome
Successfully logged into the server without password prompt.
