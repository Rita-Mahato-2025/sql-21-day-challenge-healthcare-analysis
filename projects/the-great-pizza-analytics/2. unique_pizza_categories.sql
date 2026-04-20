SELECT * FROM idc_pizza.pizza_types;

-- 2.	List all unique pizza categories (DISTINCT).
SELECT
	DISTINCT(category)
FROM pizza_types;