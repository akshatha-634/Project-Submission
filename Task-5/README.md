# Task 5: Firewall Configuration

## Objective
Configure UFW firewall to allow only required services and restrict unauthorized access.

## Steps

### 1. Install UFW
sudo apt install ufw -y

### 2. Allow SSH only from specific IP
sudo ufw allow from 192.168.56.1 to any port 22

### 3. Allow HTTP
sudo ufw allow 80

### 4. Allow port 8000
sudo ufw allow 8000

### 5. Enable UFW
sudo ufw enable

### 6. Verify rules
sudo ufw status

## Expected Outcome
Firewall active with SSH restricted to specific IP, HTTP and port 8000 open.
