SELECT * FROM idc_pizza.pizzas;

-- average pizza price
SELECT
	ROUND(AVG(price), 2) AS average_pizza_price
FROM pizzas;