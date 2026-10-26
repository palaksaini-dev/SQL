use sakila ;

select distinct (first_name) from actor;

select * from actor ;

select count(last_name) from actor;

select count(*) from actor ;

-- diff b/w count * and count column

select first_name , lower(first_name) from actor;
select first_name , lower(first_name) as new_name from actor ;
 
select first_name , upper(lower(first_name)) as new_name from actor ;
 
select first_name, substr(first_name, 3, 2) from actor;

select last_name, substr(last_name, -3 , 2) from actor;
 
select first_name , right(first_name, 4) from actor;
 
select first_name, left(first_name, 4) from actor;
 
select first_name, instr(first_name, 'J') from actor;
 
select first_name, last_name, concat(first_name, ' ', last_name) as full_name from actor;
select first_name, last_name, concat(first_name, '$ ', last_name) from actor;

select first_name, lpad(first_name, 6 , '$') from actor;
select first_name, rpad(first_name, 6 , '$') from actor;

-- trim use hota hai extra space ko remove karne ke liye --
select first_name, trim(first_name) from actor;

-- isnull or isnotnull kab or kaha use karte hai 

-- length or charlength 
--  locate or instr
-- replace naam ka function hota hai use kese use karte hai

select first_name, substr(first_name,1, 3) from actor;

-- find the position of latter A in actors first name
select first_name, instr(first_name, 'A') from actor;
