#!/bin/bash

DB_HOST=$1
DB_NAME=$2
DB_USER=$3

BACKUP_FILE="backup_$(date +%Y%m%d_%H%M%S).sql"

pg_dump -h "$DB_HOST" -U "$DB_USER" "$DB_NAME" > "$BACKUP_FILE"

echo "Backup created: $BACKUP_FILE"