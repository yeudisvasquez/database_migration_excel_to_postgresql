#!/bin/bash

# Database credentials
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="Fast_Food_Chains"
DB_USER="postgres"

# Load environment variables
if [ -f .env ]; then
    set -o allexport
    source .env
    set +o allexport
fi

# Target table and CSV file path
TABLE_NAME="sales"
CSV_FILE="$CSV_FILE_PATH"

echo "CSV_FILE=$CSV_FILE"
echo "TABLE=$TABLE_NAME"
echo "DB=$DB_NAME"

# CSV path from environment variable
if [[ -z "$CSV_FILE" ]]; then
  echo "❌ CSV_FILE_PATH is not set"
  exit 1
fi

if [[ ! -f "$CSV_FILE" ]]; then
  echo "❌ CSV file not found: $CSV_FILE"
  exit 1
fi

# Run the psql \copy command
psql -h "$DB_HOST" -p "$DB_PORT" -d "$DB_NAME" -U "$DB_USER" -c "\copy $TABLE_NAME FROM '$CSV_FILE' WITH CSV HEADER DELIMITER ',';"

echo "Data import completed!"