-- total order value per order
SELECT 
    od.order_id,
    SUM(od.quantity * p.price) AS total_order_value
FROM 
    order_details od
JOIN 
    pizzas p
    ON od.pizza_id = p.pizza_id
GROUP BY 
    od.order_id
ORDER BY 
    total_order_value DESC;  
