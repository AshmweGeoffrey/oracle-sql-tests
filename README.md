<h1>db structure :</h1>``` https://dbdiagram.io/d/66fc11e1fb079c7ebdfbeb4f ```
# Oracle SQL Tests

This repository contains a series of SQL scripts and operations performed on a sample database designed for testing purposes. The database includes tables for managing inventory, sales, payment methods, and stock movements.

## Database Structure

You can view the database structure and relationships at the following link: [Database Diagram](https://dbdiagram.io/d/66fc11e1fb079c7ebdfbeb4f).

## Directory Contents

- **0-initial-create-tables.sql**: SQL script to create the initial tables in the database.
- **1-DML-[insert]-.sql**: SQL script containing `INSERT` operations to populate the tables with sample data.
- **2-DML-[update]-.sql**: SQL script with `UPDATE` operations to modify existing records in the tables.
- **3-DML-[delete]-.sql**: SQL script featuring `DELETE` operations to remove records from the tables.
- **4-[Join]-.sql**: SQL script demonstrating various types of `JOIN` operations to retrieve data from multiple tables.
- **5-[subqueries]-.sql**: SQL script showcasing the use of subqueries to perform complex queries and data retrieval.

## Operations Overview

### Table Creation

The initial script creates the following tables:

- **sale_weekly**: Records weekly sales information, including item details, quantities sold, and payment methods.
- **payment_method**: Stores payment method details and weekly totals.
- **outgoing_stock**: Tracks outgoing stock movements, including item names and quantities.
- **inventory**: Maintains item inventory details, including quantities and categories.
- **branch**: Represents different branches in the organization.
- **category**: Contains item categories for better organization of inventory.

### Data Manipulation Language (DML) Operations

1. **Insert Operations**: Populates the tables with initial data to simulate real-world usage.
2. **Update Operations**: Modifies existing records to reflect changes, such as updating item prices or quantities.
3. **Delete Operations**: Removes records that are no longer needed or relevant.

### Joins

Various types of `JOIN` operations are performed to combine data from different tables, including:

- **Inner Join**: Retrieves records that have matching values in both tables.
- **Left Join**: Returns all records from the left table and matched records from the right table, with `NULL` for unmatched records.
- **Right Join**: Returns all records from the right table and matched records from the left table, with `NULL` for unmatched records.
- **Full Outer Join**: Combines results from both left and right tables, including unmatched records from either side.

### Subqueries

Subqueries are utilized to perform nested queries, allowing complex data retrieval based on the results of another query. This includes:

- Using subqueries in the `SELECT` clause to compute totals.
- Using subqueries in the `WHERE` clause to filter results based on aggregate data.
- Using correlated subqueries to check for existence and relationships between tables.

## Conclusion

This repository serves as a comprehensive example of SQL operations, showcasing the creation, manipulation, and retrieval of data in a relational database. Feel free to explore the scripts and modify them as needed for your own testing and learning purposes.


