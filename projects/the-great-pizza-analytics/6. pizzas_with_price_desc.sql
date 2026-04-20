SELECT * FROM idc_pizza.pizzas;

-- List pizzas with price descending.
SELECT
	pizza_id,
    pizza_type_id,
    size,
    price
FROM pizzas
ORDER BY price DESC;