#group the orders by date and calculate the average number of pizzas ordered per day
select avg(qty) 
from

(select date(order_date) ,sum(od.quantity)  as qty
from orders as o
inner join order_details as od
on o.order_id = od.order_id
group by  date(order_date) ) as average_per_day