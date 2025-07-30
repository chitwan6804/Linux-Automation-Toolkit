#!/bin/bash

# Explicitly set home directory
USER_HOME="/home/chitwan20"
SOURCE_DIR="$USER_HOME/Documents"
BACKUP_DIR="$USER_HOME/linux-automation-toolkit/backups"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

if [ -d "$SOURCE_DIR" ]; then
    tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"
    echo "Backup created at $TIMESTAMP"
else
    echo "Error: Source folder '$SOURCE_DIR' not found."
fi

