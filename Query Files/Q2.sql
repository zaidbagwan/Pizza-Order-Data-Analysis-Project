#calculate total revenue generate from pizza sales

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total
FROM
    pizzas
        INNER JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id

select sum(