#indentify the most common pizza size ordered 

select p.size ,count(p.size),sum(o.quantity)
from pizzas as p 
inner join order_details as o
on p.pizza_id = o.pizza_id
group by p.size 
order by count(p.size) DESC

select p.size ,sum(o.quantity)
from pizzas as p
inner join order_details as o
on p.pizza_id = o.pizza_id

group by p.pizza_id

select quantity,count(order_details_id)
from order_details 
group by quantity