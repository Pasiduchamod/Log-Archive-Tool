#!/bin/bash

LOG_DIR=$1

if [ -z "$LOG_DIR" ]; then
	echo "Usage : ./log-archive.sh <log-directory>"
	exit 1
fi

if [ ! -d "$LOG_DIR" ]; then
	echo "Error : $LOG_DIR is not exists."
	exit 1
fi

if [ ! "$(ls -A "$LOG_DIR")" ]; then
	echo "Directory $LOG_DIR is empty. Nothing to archive."
	exit 1
fi

ARCHIVE_DIR="$HOME/log_archives"
mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

DAYS=14

find "$ARCHIVE_DIR" -type f -name "*.tar.gz" -mtime +$DAYS -delete

tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" .

LOG_FILE="$ARCHIVE_DIR/archive.log"
echo "Archived $LOG_DIR at $TIMESTAMP -> $ARCHIVE_NAME" >> "$LOG_FILE"
