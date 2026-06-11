Excel/CSV → PostgreSQL Automated Migration (Bash ETL Tool)

This project is a lightweight ETL automation script that loads data from an Excel-exported CSV file into a PostgreSQL database using Bash and psql.

It simplifies repetitive data loading tasks by automating the import process and validation steps.

What This Project Does
This tool allows you to:
- Load a CSV dataset into PostgreSQL automatically
- Validate file existence before import
- Execute \copy for fast bulk loading
- Run a post-load row count check
- Centralize configuration using .env

Requirements
- PostgreSQL installed locally
- psql available in system PATH
- A created database and table schema
- CSV file exported from Excel

Tech Stack
- SQL
- Bash Scripting
- PostgreSQL (psql, \copy)
- Git & GitHub
- CSV (Excel export format)

Project Structure
.
├── import_data.sh      # ETL automation script
├── .env                # Configuration file (not committed)
├── README.md

Environment Variables (.env)
Create a `.env` file in the project root:
DB_HOST=localhost
DB_PORT=5432
DB_NAME=your_database
DB_USER=postgres
DB_PASSWORD=your_password
CSV_FILE_PATH=/path/to/your/file.csv
PSQL_PATH=/path/to/psql (optional)
TABLE_NAME=your_table

Workflow
1. Load environment variables from .env
2. Validate CSV file path
3. Connect to PostgreSQL
4. Import data using \copy
5. Run row count validation
6. Display success or failure message