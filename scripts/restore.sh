#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Usage: ./restore.sh backup.sql"
    exit 1
fi

docker exec assessment-postgres \
psql \
-U postgres \
-c "DROP DATABASE IF EXISTS assessmentdb;"

docker exec assessment-postgres \
psql \
-U postgres \
-c "CREATE DATABASE assessmentdb;"

cat "$1" | docker exec -i assessment-postgres \
psql \
-U postgres \
-d assessmentdb

echo "Restore completed."