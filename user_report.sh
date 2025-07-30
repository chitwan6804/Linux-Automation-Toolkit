#!/bin/bash

echo "User Report generated on: $(date)"
echo "-------------------------------"
cut -d: -f1 /etc/passwd | while read user; do
    if id "$user" &>/dev/null; then
        home_dir=$(eval echo ~$user)
        if [ -d "$home_dir" ]; then
            du -sh "$home_dir" 2>/dev/null | awk -v u=$user '{print u": "$1}'
        fi
    fi
done
