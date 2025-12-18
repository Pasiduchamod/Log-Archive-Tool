#!/bin/bash

LOG_DIR=$1

if [ -z "$LOG_DIR" ]; then
	echo "Usage : ./log-archive.sh <log-directory>"
	exit 1
fi

ARCHIVE_DIR="$HOME/log_archives"
mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" .

LOG_FILE="$ARCHIVE_DIR/archive.log"
echo "Archived $LOG_DIR at $TIMESTAMP -> $ARCHIVE_NAME" >> "$LOG_FILE"
