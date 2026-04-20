SELECT * FROM idc_pizza.pizzas;

-- Pizzas priced between $15.00 and $17.00.
SELECT 
	pizza_id,
    pizza_type_id,
    price
FROM pizzas
WHERE price BETWEEN '15.00' AND '17.00';