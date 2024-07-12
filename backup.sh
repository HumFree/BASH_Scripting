#!/bin/bash

# Author: Christopher Humphrey

# Script to backup files.

BACKUP_SRC="/tmp"
BACKUP_DST="/home"
BACKUP_DATE=$(date '+%F')
BACKUP_FILENAME="BACKUP_$BACKUP_DATE.tar.gz"

mkdir -p "$BACKUP_DST/$BACKUP_DATE"

# Archive of file

tar -czf "$BACKUP_DST/$BACKUP_DATE/$BACKUP_FILENAME" "$BACKUP_SRC"

# Verify the backup was succesful.

if [ $? -eq 0 ]; then
	echo "The backup was succesful!"
else
	"The backup failed!"
fi
