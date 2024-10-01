-- Updating branch table to change the name of Branch A
UPDATE branch 
SET branch_name = 'Main Branch' 
WHERE id = '1';

-- Updating category table to change the percentage for Electronics
UPDATE category 
SET percentage = '12%' 
WHERE name = 'Electronics';

-- Updating payment method to change the total_weekly for Credit Card
UPDATE payment_method 
SET total_weekly = 1200 
WHERE name = 'Credit Card';

