SELECT 
    i.name AS item_name, 
    (SELECT COUNT(*) 
     FROM sale_weekly sw 
     WHERE sw.item_name = i.name) AS total_sales
FROM 
    inventory i;

