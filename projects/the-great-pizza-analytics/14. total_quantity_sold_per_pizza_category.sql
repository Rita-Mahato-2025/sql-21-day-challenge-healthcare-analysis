-- Total quantity sold per pizza category (JOIN, GROUP BY).
SELECT
	pt.category AS pizza_category,
    SUM(od.quantity) AS total_quantity
FROM pizza_types pt
JOIN pizzas p 
ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od
ON p.pizza_id = od.pizza_id
GROUP BY pt.category;