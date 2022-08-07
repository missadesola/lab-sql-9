-- 1  
CREATE TABLE rentals_may AS
SELECT *
FROM rental
WHERE DATE(rental_date) BETWEEN '2005-05-01' AND '2005-05-31';

SELECT * FROM rentals_may;

-- 2
CREATE TABLE rentals_june AS
SELECT *
FROM rental
WHERE DATE(rental_date) BETWEEN '2005-06-01' AND '2005-06-30';

SELECT * FROM rentals_june;

-- Check the number of rentals for each customer for May
SELECT customer_id, COUNT(rental_id)
FROM rentals_may
GROUP BY customer_id;

-- Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(rental_id)
FROM rentals_june
GROUP BY customer_id;
