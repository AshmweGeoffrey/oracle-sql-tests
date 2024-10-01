-- Inserting data into the branch table
INSERT INTO branch (id, branch_name) VALUES 
('1', 'Branch A'),
('2', 'Branch B');

-- Inserting data into the category table
INSERT INTO category (id, name, percentage) VALUES 
('1', 'Electronics', '10%'),
('2', 'Furniture', '15%');

-- Inserting data into the payment_method table
INSERT INTO payment_method (payment_id, name, total_weekly) VALUES 
('p1', 'Credit Card', 1000),
('p2', 'Cash', 500);

-- Inserting data into the inventory table
INSERT INTO inventory (id, name, category_name, inventory_quantity, incoming_time_stamp) VALUES 
('i1', 'Laptop', 'Electronics', 50, '2024-09-01 12:00:00'),
('i2', 'Desk', 'Furniture', 30, '2024-09-02 12:00:00');

-- Inserting data into the outgoing_stock table
INSERT INTO outgoing_stock (id, item_name, category_name, branch_name, quantity, time_stamp) VALUES 
('os1', 'Laptop', 'Electronics', 'Branch A', 2, '2024-09-05 10:00:00'),
('os2', 'Desk', 'Furniture', 'Branch B', 1, '2024-09-05 11:00:00');

-- Inserting data into the sale_weekly table
INSERT INTO sale_weekly (id, item_name, category, quantity, price, time_stamp, payment_method) VALUES 
('sw1', 'Laptop', 'Electronics', 2, 1500, '2024-09-05 12:00:00', 'Credit Card'),
('sw2', 'Desk', 'Furniture', 1, 200, '2024-09-05 12:30:00', 'Cash');

