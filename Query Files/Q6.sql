# Total quantity of each pizza order

select p.pizza_id,sum(o.quantity) as qty
from pizzas as p
inner join order_details as o
on p.pizza_id = o.pizza_id
group by pizza_id 
order by qty DESC

# total quantity of each pizza category ordered
select pt.category,sum(quantity) as qty
from pizzas as p
inner join pizza_types as pt
on pt.pizza_type_id = p.pizza_type_id
inner join order_details as o
on o.pizza_id = p.pizza_id
group by pt.category