#!/bin/bash

if [ -z "$1" ]; then
	echo "Error, please enter directory again."
	exit 1
fi
FILENAME=$(date +"logs_archive_%Y%m%d_%H%M%S").tar.gz
mkdir -p log_archives
tar -czf log_archives/$FILENAME $1
echo "Archive Created: " $(date +"%Y-%m-%d %H:%M:%S") >> archive_log.txt
	
