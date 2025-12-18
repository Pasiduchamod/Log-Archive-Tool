#!/bin/bash

LOG_DIR = $1

if[-z "$LOG_DIR"];then
	echo "Usage : .log-arcive.sh <log directory>"
	exit 1
fi

