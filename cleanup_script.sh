#!/bin/bash

TARGET_DIR="$HOME/linux-automation-toolkit/logs"
mkdir -p "$TARGET_DIR"

find "$TARGET_DIR" -name "*.log" -type f -mtime +7 -exec rm {} \;
echo "Old .log files removed from $TARGET_DIR"
