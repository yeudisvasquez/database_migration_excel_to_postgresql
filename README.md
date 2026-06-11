Dataset Migration: Excel -> PostgreSQL

This project demonstrates a complete data migration workflow, moving a dataset from Excel into PostgreSQL using command-line automation.

Project Steps
- Download a dataset in Excel format from Kaggle
    - Top 50 Fast-Food Chains in USA
- Convert the dataset to CSV for database compatibility
- Design and create PostgreSQL tables that match the original dataset schema
- Develop a Bash script (with shebang) to automate data import
- Execute the script to load data into PostgreSQL
- Validate the migration by verifying row counts and data integrity

Tools & Technologies
- SQL (schema design and validation)
- Bash scripting (automation)
- PostgreSQL
- Git (version control)

### Environment Variables
Create a `.env` file in the project root:
CSV_FILE_PATH
This file is ignored by Git.