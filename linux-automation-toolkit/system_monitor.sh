#!/bin/bash

LOG_FILE="$HOME/linux-automation-toolkit/system_usage.log"

{
  echo "----- $(date) -----"
  echo "CPU Usage:"
  top -bn1 | grep "Cpu(s)"
  echo "Memory Usage:"
  free -h
  echo "-----------------------"
} >> "$LOG_FILE"
