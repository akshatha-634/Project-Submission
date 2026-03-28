# Task 3: Container Monitoring Script

## Objective
Monitor container CPU and memory usage with timestamps using a bash script and cron job.

## Steps

### 1. Create monitoring directory
sudo mkdir -p /opt/container-monitor/logs

### 2. Create monitoring script
sudo nano /opt/container-monitor/monitor.sh

### 3. Script content
#!/bin/bash
CONTAINER="myapp-container"
LOG_DIR="/opt/container-monitor/logs"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
CPU=$(sudo docker stats --no-stream --format "{{.CPUPerc}}" $CONTAINER)
MEM=$(sudo docker stats --no-stream --format "{{.MemUsage}}" $CONTAINER)
echo "[$TIMESTAMP] CPU: $CPU | Memory: $MEM" >> $LOG_DIR/monitor.log

### 4. Make script executable
sudo chmod +x /opt/container-monitor/monitor.sh

### 5. Set up cron job (runs every minute)
sudo crontab -e
* * * * * /bin/bash /opt/container-monitor/monitor.sh

## Expected Outcome
Automatic logs generated every minute at /opt/container-monitor/logs/monitor.log
