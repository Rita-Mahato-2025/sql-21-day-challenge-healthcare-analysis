SELECT * FROM idc_pizza.orders;

-- orders placed on '2015-01-01'
SELECT 
	*
FROM orders
WHERE date = '2015-01-01';