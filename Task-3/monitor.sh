#!/bin/bash

CONTAINER="myapp-container"
LOG_DIR="/opt/container-monitor/logs"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

CPU=$(sudo docker stats --no-stream --format "{{.CPUPerc}}" $CONTAINER)
MEM=$(sudo docker stats --no-stream --format "{{.MemUsage}}" $CONTAINER)

echo "[$TIMESTAMP] CPU: $CPU | Memory: $MEM" >> $LOG_DIR/monitor.log

