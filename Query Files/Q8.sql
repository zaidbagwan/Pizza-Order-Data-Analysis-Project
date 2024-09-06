#find category wise distribution pizza 
select pt.category,count(distinct od.order_id) 
from pizzas as p
inner join pizza_types pt
on p.pizza_type_id = pt.pizza_type_id
inner join order_details as od
on p.pizza_id = od.pizza_id
group by pt.category