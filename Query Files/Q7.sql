#determine the distribution of orders by hour of the day
select hour(order_time)  ,sum(od.quantity)as qty_of_piuzzas,count(od.order_id)as no_of_types_of_pizzas,count(distinct o.order_id) as no_of_orders
from orders  as o

inner join order_details as od
on o.order_id = od.order_id
group by hour(order_time)

select distinct hour(order_time) from orders

select hour(order_time),count(order_id) 
 from orders
group by hour(order_time)

select * from orders
where hour(order_time) = 9

select * from order_details
where order_id = 19176