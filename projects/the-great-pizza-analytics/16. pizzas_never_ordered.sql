-- Pizzas never ordered (LEFT/RIGHT JOIN).
SELECT
	p.pizza_id,
    p.pizza_type_id,
    p.size,
    pt.name,
    pt.category,
    od.order_details_id
FROM pizzas AS p
LEFT JOIN pizza_types AS pt
ON p.pizza_type_id = pt.pizza_type_id
LEFT JOIN order_details AS od
ON p.pizza_id = od.pizza_id
WHERE od.order_details_id IS NULL;