#  list the top 5 most ordered pizza type along with their quantities

select pt.name,count(o.order_details_id),sum(o.quantity)
from pizzas as p
inner join order_details as o
on o.pizza_id = p.pizza_id

inner join pizza_types as pt
on p.pizza_type_id = pt.pizza_type_id

group by pt.name 
order by sum(o.quantity) DESC limit 5