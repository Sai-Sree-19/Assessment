#!/bin/bash

DB_HOST=$1
DB_NAME=$2
DB_USER=$3
BACKUP_FILE=$4

psql -h "$DB_HOST" -U "$DB_USER" "$DB_NAME" < "$BACKUP_FILE"

echo "Restore completed."