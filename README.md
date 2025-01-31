# Pet Adoption Database System

A relational database system designed to manage and streamline pet adoptions. This project focuses on structuring and querying pet adoption data, including pets, owners, breeds, adoptions, veterinarians, and locations, to improve efficiency for adoption agencies.

## Features
- **Database Schema Design:** Developed a relational database using ER/EER modeling to define entities and relationships.
- **SQL Query Implementation:** Includes SQL scripts for:
  - Creating tables and constraints (`dbDDL.sql`).
  - Inserting, updating, and deleting records (`dbDML.sql`).
  - Querying adoption trends, available pets by breed/location, and veterinarian proximity (`dbSQL.sql`).
  - Dropping tables and cleaning up the database (`dbDROP.sql`).
- **Structured Queries for Data Retrieval:** Designed relational queries using `JOIN`, `GROUP BY`, and `HAVING` to extract insights such as:
  - Available pets by breed and location.
  - Adoption trends and average ages of pets.
  - Veterinarian proximity to pet locations.
- **Basic Web Interface (Flask + HTML):** Integrated a simple Flask-based web interface (`app.py`, `index.html`) for viewing adoption records.

## Technologies Used
- SQL (DDL, DML, Aggregation, Joins)
- Python (Flask for minimal web integration)
- ER/EER Modeling

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/gbs0116/Database-WebApp.git
