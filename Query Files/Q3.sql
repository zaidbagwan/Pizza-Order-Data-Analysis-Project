#identify highest price pizza

select pt.name ,p.price
from pizzas as p
inner join pizza_types as pt
on pt.pizza_type_id = p.pizza_type_id
order by p.price desc limit 1