# SQL Database Operations Repository

This repository contains a series of SQL scripts and operations for managing a retail or inventory database system. Below, you'll find detailed explanations of each component along with sample SQL queries.

## Database Structure

You can view the database structure and relationships at the following link: [Database Diagram](https://dbdiagram.io/d/66fc11e1fb079c7ebdfbeb4f).

## Directory Contents

### 0-initial-create-tables.sql

This script initializes the database by creating the necessary tables. Here's a sample of table creation:

```sql
CREATE TABLE inventory (
  id varchar(50) NOT NULL,
  name varchar(64) NOT NULL,
  category_name varchar(32) NOT NULL,
  inventory_quantity int NOT NULL DEFAULT '0',
  incoming_time_stamp datetime DEFAULT NULL,
  PRIMARY KEY (name),
  FOREIGN KEY (category_name) REFERENCES category (name)
);
```

### 1-DML-[insert]-.sql

This script contains INSERT operations to populate the tables with initial data. Example:

```sql
INSERT INTO inventory (id, name, category_name, inventory_quantity, incoming_time_stamp) VALUES 
('i1', 'Laptop', 'Electronics', 50, '2024-09-01 12:00:00'),
('i2', 'Desk', 'Furniture', 30, '2024-09-02 12:00:00');
```

### 2-DML-[update]-.sql

This script demonstrates UPDATE operations to modify existing records. Example:

```sql
UPDATE category 
SET percentage = '12%' 
WHERE name = 'Electronics';
```

### 3-DML-[delete]-.sql

This script showcases DELETE operations to remove records. Example:

```sql
DELETE FROM category 
WHERE name = 'Furniture';
```

### 4-[Join]-.sql

This script demonstrates various types of JOIN operations. Here's an example of an INNER JOIN:

```sql
SELECT 
    sw.id AS sale_id, 
    sw.item_name, 
    sw.quantity AS sale_quantity, 
    sw.price AS sale_price, 
    i.category_name
FROM 
    sale_weekly sw
INNER JOIN 
    inventory i ON sw.item_name = i.name;
```

### 5-[subqueries]-.sql

This script showcases the use of subqueries for complex data retrieval. Example:

```sql
SELECT 
    i.name AS item_name, 
    (SELECT COUNT(*) 
     FROM sale_weekly sw 
     WHERE sw.item_name = i.name) AS total_sales
FROM 
    inventory i;
```

## Operations Overview

### Table Creation

The initial script creates several tables including `sale_weekly`, `payment_method`, `outgoing_stock`, `inventory`, `branch`, and `category`. Each table is designed to store specific information related to sales, inventory, and organizational structure.

### Data Manipulation Language (DML) Operations

1. **Insert Operations**: 
   These operations populate the tables with initial data. For example:

   ```sql
   INSERT INTO branch (id, branch_name) VALUES 
   ('1', 'Branch A'),
   ('2', 'Branch B');
   ```

2. **Update Operations**: 
   These modify existing records. For instance:

   ```sql
   UPDATE payment_method 
   SET total_weekly = 1200 
   WHERE name = 'Credit Card';
   ```

3. **Delete Operations**: 
   These remove records that are no longer needed. Example:

   ```sql
   DELETE FROM branch 
   WHERE id = '2';
   ```

### Joins

Various types of JOIN operations are performed to combine data from different tables. This allows for more complex data retrieval. For example:

```sql
SELECT 
    os.id, 
    os.item_name, 
    os.quantity, 
    b.branch_name
FROM 
    outgoing_stock os
LEFT JOIN 
    branch b ON os.branch_name = b.branch_name;
```

### Subqueries

Subqueries are utilized to perform nested queries, allowing complex data retrieval based on the results of another query. This includes:

```sql
SELECT 
    category_name,
    (SELECT AVG(price) 
     FROM sale_weekly 
     WHERE category = category_name) AS avg_price
FROM 
    category;
```
### Oracle SetUp
```sql
#Creating User 
SQL> CREATE USER C##geoffrey_plsqlauca IDENTIFIED BY "G3offrey#002" 
DEFAULT TABLESPACE users 
TEMPORARY TABLESPACE temp;  2    3  

User created.

#Grant Privilleges

SQL> GRANT ALL PRIVILEGES TO C##geoffrey_plsqlauca CONTAINER=ALL;

Grant succeeded.

# Pluggable Database

SQL> CREATE PLUGGABLE DATABASE ge_to_delete_pdb 
ADMIN USER pdb_admin IDENTIFIED BY "AdminPass123"
ROLES = (CONNECT)
FILE_NAME_CONVERT = ('/opt/oracle/oradata/XE/pdbseed/', '/opt/oracle/oradata/XE/ge_to_delete_pdb/');  2    3    4  

Pluggable database created.

SQL> ALTER PLUGGABLE DATABASE ge_to_delete_pdb OPEN;

Pluggable database altered.

SQL> SELECT name, open_mode FROM v$pdbs;

NAME
--------------------------------------------------------------------------------
OPEN_MODE
----------
PDB$SEED
READ ONLY

XEPDB1
READ WRITE

GE_TO_DELETE_PDB
READ WRITE


SQL> 
SQL> ALTER SESSION SET CONTAINER = CDB$ROOT;

Session altered.

SQL> 
SQL> ALTER PLUGGABLE DATABASE ge_to_delete_pdb CLOSE IMMEDIATE;


Pluggable database altered.

SQL> SQL> DROP PLUGGABLE DATABASE ge_to_delete_pdb INCLUDING DATAFILES;


Pluggable database dropped.
```
This README provides an overview of the SQL operations and structure in this repository. Each script contains more detailed operations and can be referenced for specific use cases.
