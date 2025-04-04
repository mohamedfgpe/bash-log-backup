#!/bin/bash

BACKUP_DIR="/var/backups/logs"  
SOURCE_DIR="/var/log"           
LOG_FILE="/var/log/backup_logs.log"

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/logs_backup_$(date +%F).tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR" > "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE" | tee -a "$LOG_FILE"
else
    echo "Backup failed!" | tee -a "$LOG_FILE"
fi
