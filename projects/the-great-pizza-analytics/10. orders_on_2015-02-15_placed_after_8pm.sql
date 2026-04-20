SELECT * FROM idc_pizza.orders;

-- Orders on '2015-02-15' or placed after 8 PM.
SELECT
	order_id,
    date,
    time
FROM orders
WHERE date = '2015-02-15' AND
		time > '20:00:00';