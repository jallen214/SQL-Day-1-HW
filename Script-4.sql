--1. How many actors are there withe the last name 'Wahlberg'?
select last_name,count(last_name) from actor
where last_name like 'Wahlberg'
group by last_name;
  --Answer:There are 2 Walberg

--2. How many payments were made between 3.99 and 5.99?
select count(amount) from payment
where amount >= 3.99 and amount <= 5.99;
  --Answer:There were 0 payments made between 3.99 and 5.99

--3. What films does the store have the most of?(search in inventory)
select * from inventory
select film_id, count(film_id)
from inventory
group by film_id
order by count desc;
  --Answer: Film_id 193 but there are more films that have this same amount
  

--4. How many customers have the last name 'William'?
select last_name, count(last_name) 
from customer
where last_name like 'William'
group by last_name;
  --Answer:No data


--5. What store employee (get the id) sold the most rentals?
select * from rental
select count(payment_id), staff_id 
from payment
group by staff_id
order by count desc;
  --Answer: Jon has sold the most rentals



--6. How many different district names are there?
select district from address
select count(district), district
from address 
group by district
order by count desc;
  --Answer: There are 378 district names


--7. What film has the most actors in it? (use film_actor table and get film_id)
select count(actor_id), film_id 
from film_actor
group by film_id 
order by count desc;
  --Answer: Lambs Cincinatti

--8. From store_id, how many customers have a last name ending with 'es'? (use customer table)
select * from customer
select last_name, customer_id
from customer
where last_name like '%es' and store_id = 1;
  --Answer: There are 13 customers that have a last name ending with 'es'


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select * from payment
select count(payment_id), amount
from payment
where customer_id between 380 and 430
group by payment.amount
having count(rental_id) > 250;
  --Answer: There were 3 payment amounts above 250


--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(film_id), rating
from film
group by rating
order by count desc;
  --Answer: 5 rating categories, most movies are PG-13