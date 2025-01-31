# Pet Adoption Database System (Minimal Web Integration) 
- The University of Texas at Arlington, School Project

This project is a relational database system designed to store and manage pet adoption data. It organizes information about pets, owners, breeds, adoptions, and locations, providing structured queries for analysis. While primarily a database system, it includes a minimal Flask-based web interface for displaying adoption records.

---
##  **Files and Their Purpose**
### 🔹 **Database Files (`database/`)**
- **`dbDDL.sql`** – *Data Definition Language (DDL)*  
  - Creates the database schema (tables, constraints, primary/foreign keys).  
  - Defines the relationships between tables (pets, owners, adoptions, etc.).  

- **`dbDML.sql`** – *Data Manipulation Language (DML)*  
  - Inserts sample data into tables (e.g., adding pets, owners, and adoption records).  
  - Can be modified to insert custom data.  

- **`dbSQL.sql`** – *SQL Queries for Analysis*  
  - Contains pre-written SQL queries to retrieve insights such as:
    - Available pets by breed and location.
    - Adoption trends and pet statistics.
  - This file helps users test and interact with the dataset.  

- **`dbDROP.sql`** – *Database Cleanup*  
  - Removes tables and clears the database if a reset is needed.  
  - Use with caution, as it will delete all data.  

### 🔹 **Web Interface (`web/`)**
- **`app.py`** – The Flask backend that connects to the database and serves data via a simple interface.  
- **`templates/index.html`** – A basic HTML front-end to display adoption records.  

### 🔹 **Documentation (`docs/`)**
- **`Final_Report.pdf`** – Contains details about the database structure, relationships, and the overall project.  
- **`Project_Report_Phase3.pdf`** – Covers Phase III of the project, including entity relationships, SQL queries, and query results.

---

 
