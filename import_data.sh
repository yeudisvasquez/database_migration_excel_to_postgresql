#!/bin/bash

# Database credentials
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="Fast Food Chains"
DB_USER="postgres"

# Load environment variables
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

# Target table and CSV file path
TABLE_NAME="Top 50 Fast-Food Chains in USA"
CSV_FILE="$CSV_FILE_PATH"

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