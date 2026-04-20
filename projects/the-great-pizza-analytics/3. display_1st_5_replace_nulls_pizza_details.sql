SELECT * FROM idc_pizza.pizza_types;

-- 3.	Display pizza_type_id, name, and ingredients, replacing NULL ingredients with "Missing Data". Show first 5 rows.
SELECT
	pizza_type_id,
    name,
    IFNULL(ingredients, 'Missing Data') AS ingredients
FROM pizza_types
ORDER BY pizza_type_id
LIMIT 5;