# Pet Adoption Database System (Minimal Web Integration)  
### University of Texas at Arlington – School Project  

This project is a **relational database system** designed to store and manage pet adoption data. It organizes information about pets, owners, breeds, adoptions, and locations, providing structured queries for analysis. While primarily a database system, it includes a **minimal Flask-based web interface** for displaying adoption records.

---

## **Files and Their Purpose**  

### **Database Files (`database/`)**  
- **`dbDDL.sql`** – Data Definition Language (DDL)  
  - Defines the **database schema**, including tables, constraints, primary keys, and foreign keys.  
  - Establishes relationships between key entities such as **pets, owners, and adoptions**.  

- **`dbDML.sql`** – Data Manipulation Language (DML)  
  - Inserts **sample data** into tables (e.g., pets, owners, and adoption records).  
  - Can be modified to insert **custom datasets**.  

- **`dbSQL.sql`** – SQL Queries for Analysis  
  - Contains **pre-written queries** to retrieve insights such as:  
    - Available pets by breed and location.  
    - Adoption records and pet statistics.  
  - Helps users **test and interact** with the dataset.  

- **`dbDROP.sql`** – Database Cleanup  
  - Removes all tables and clears the database if a **reset is needed**.  
  - *Use with caution – this action is irreversible.*  

---

### **Web Interface (`web/`)**  
- **`app.py`** – Flask backend that connects to the database and serves data.  
- **`templates/index.html`** – Basic HTML front-end for displaying adoption records.  

---

### **Documentation (`docs/`)**  
- **`Final_Report.pdf`** – Detailed documentation on the **database structure, relationships, and project methodology**.  
- **`Project_Report_Phase3.pdf`** – Covers **Phase III**, including entity relationships, SQL queries, and query results.  

---



