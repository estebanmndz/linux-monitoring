#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
RAM=$(free -m | awk '/Mem/ {print $3}')
DISK=$(df -h / | awk '/\// {print $5}')

echo "CPU: $CPU% | RAM: ${RAM}MB | DISK: $DISK"
