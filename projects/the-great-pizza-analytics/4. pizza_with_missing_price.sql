SELECT * FROM idc_pizza.pizzas;

-- 4.	Check for pizzas missing a price (IS NULL).
SELECT *
FROM pizzas
WHERE price IS NULL;