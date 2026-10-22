-- show databases;
-- use sakila;
-- how tables;

-- ye comment out ke liye hota hai

use sakila;
show tables;

select * from actor;
select first_name, last_name from actor;
select actor_id, actor_id * 2 as product from actor;

select * from actor
where actor_id = 5;

select * from actor
where first_name = 'ED';

select * from actor
where first_name = 'ED' and actor_id > 100;

select * from actor
where first_name = 'ED' or actor_id > 100;

select * from actor 
where actor_id > 10 and actor_id < 25;

select  first_name, last_name from actor
where actor_id > 12 and actor_id < 15;

select * from actor where actor_id in (3, 6);



-- % - any number of charecter , _ - exactly one charecter

select * from actor where first_name like 'J%';

select * from actor where first_name like 'M___';


-- jaha first = nick ya fir first name = ed ho
select * from actor where first_name = 'nick' or first_name = 'ed';

-- first name ed or last name chase
select * from actor where first_name = 'ed' and last_name = 'chase';

-- find actors whose last name is s
select * from actor where last_name like 's%';

-- display whose first name ends with a
select * from actor where first_name like 's%a';

-- display actors whose first name has the second charecter is a
select * from actor where first_name like '_a%';

-- 1. Find actors whose first name is 'NICK' or 'ED' and whose actor_id is greater than 10.
select * from actor where first_name = 'nick' or first_name = 'ed' and actor_id > 10;

-- 2. Display actors whose actor_id is between 20 and 80 and whose first name starts with 'A'.
select * from actor where first_name like 'a%' and actor_id between 20 and 30;
select * from actor where actor_id between 20 and 30 and first_name like 'a%';

-- 3. Find actors whose first name is in 'NICK', 'ED', 'JOHNNY' and whose last name starts with 'D'.
select * from actor where first_name in ('nick', 'ed', 'johnny') and last_name like 'd%';

-- 4. Display actors whose actor_id is between 1 and 50 or whose first name ends with 'A'.
select * from actor where actor_id between 1 and 50 or first_name like 'a%';

-- 5. Find actors whose last name contains 'S' and whose actor_id is between 50 and 100.
select * from actor where last_name like '%s%' and actor_id between 50 and 100;
