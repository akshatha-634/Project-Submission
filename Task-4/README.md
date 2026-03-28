# Task 4: Secure Monitoring Logs with Dedicated User

## Objective
Create a dedicated user for monitoring and restrict access to monitoring directory.

## Steps

### 1. Create dedicated user
sudo useradd -m monitor-user

### 2. Create monitoring directory
sudo mkdir -p /opt/container-monitor

### 3. Assign ownership to monitor-user
sudo chown -R monitor-user /opt/container-monitor

### 4. Set permissions
sudo chmod -R 750 /opt/container-monitor

### 5. Verify access control
ls -ld /opt/container-monitor
sudo -u monitor-user ls /opt/container-monitor

## Expected Outcome
monitor-user has full access, other users are restricted.
