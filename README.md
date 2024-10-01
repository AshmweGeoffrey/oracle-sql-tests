This repository contains a series of SQL scripts and operations
## Database Structure

You can view the database structure and relationships at the following link: [Database Diagram](https://dbdiagram.io/d/66fc11e1fb079c7ebdfbeb4f).

## Directory Contents

- **0-initial-create-tables.sql**: SQL initial create
- **1-DML-[insert]-.sql**: SQL script containing `INSERT`
- **2-DML-[update]-.sql**: SQL script with `UPDATE`
- **3-DML-[delete]-.sql**: SQL script featuring `DELETE`
- **4-[Join]-.sql**: SQL script demonstrating various types of `JOIN` operations to retrieve data from multiple tables.
- **5-[subqueries]-.sql**: SQL script showcasing the use of subqueries
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
1. **Insert Operations**: Populates the tables with initial data[dummy data]
2. **Update Operations**: Modifies existing records such as updating item prices or quantities.
3. **Delete Operations**: Removes records that are no longer in need

### Joins

Various types of `JOIN` operations are performed to combine data from different
### Subqueries

Subqueries are utilized to perform nested queries, allowing complex data retrieval based on the results of another query. This includes:

- Using subqueries in the `SELECT`
