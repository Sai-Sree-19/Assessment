#!/bin/bash

set -e

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

mkdir -p backups

docker exec assessment-postgres \
pg_dump \
-U postgres \
-d assessmentdb \
> backups/assessmentdb_$TIMESTAMP.sql

echo "Backup completed"

echo "File : backups/assessmentdb_$TIMESTAMP.sql"