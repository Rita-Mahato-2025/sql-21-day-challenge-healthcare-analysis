-- Pizzas sold in sizes 'L' or 'XL'.
SELECT 	
	pizza_id, 
    pizza_type_id, 
    size 
FROM pizzas 
WHERE size IN ('L', 'XL');