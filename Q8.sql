-- Group the orders by date and 
-- calculate the average number of pizzas ordered per day 
select round(avg(Quantity),0) Avg_qnty_per_day from
(select orders.order_date, sum(order_details.quantity) as Quantity
from orders join order_details
on orders.order_id = order_details.order_id
group by orders.order_date) as order_quantity;