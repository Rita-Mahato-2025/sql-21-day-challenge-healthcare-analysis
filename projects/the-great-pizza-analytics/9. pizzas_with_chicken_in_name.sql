SELECT 
	pizza_type_id, 
	name 
FROM pizza_types 
WHERE LOWER(name) LIKE '%chicken%';