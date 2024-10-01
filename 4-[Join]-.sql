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

