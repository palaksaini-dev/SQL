-- agg.alter

use sakila;
select * from payment;

-- calculate the total sum where payment id is > 12 
select sum(amount) from payment where payment_id > 12;

-- 
select customer_id, sum(amount) as total from payment group by customer_id;
select customer_id, sum(amount) from payment group by customer_id having sum(amount) > 100;