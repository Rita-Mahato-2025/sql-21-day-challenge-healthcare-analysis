SELECT * FROM idc_pizza.order_details;

-- Total quantity of pizzas sold (SUM).
SELECT
	SUM(quantity) AS total_quantity
FROM order_details;