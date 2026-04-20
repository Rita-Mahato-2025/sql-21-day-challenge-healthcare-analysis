-- Price differences between different sizes of the same pizza (SELF JOIN).
SELECT 	
	p1.pizza_type_id, 
    p1.size AS size_1, 
    p1.price AS price_1, 
    p2.size AS size_2, 
    p2.price AS price_2, 
    (p1.price - p2.price) AS price_difference 
FROM pizzas AS p1 
JOIN pizzas AS p2 
ON 
	p1.pizza_type_id = p2.pizza_type_id AND 
    p1.size <> p2.size 
ORDER BY p1.pizza_type_id, p1.size;