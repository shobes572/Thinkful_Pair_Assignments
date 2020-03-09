SELECT ct.name, ROUND(AVG(flm.length), 2) AS avglen
FROM category AS ct 
INNER JOIN film_category AS fct ON ct.category_id = fct.category_id
RIGHT OUTER JOIN film AS flm ON fct.film_id = flm.film_id
WHERE flm.rating <> 'G'
GROUP BY ct.name
HAVING AVG(flm.length) > 120
ORDER BY ct.name;


SELECT country.country, ROUND(AVG(DATE_PART('day', rental.return_date::timestamp - rental.rental_date::timestamp))::NUMERIC, 2) AS avg_rent_duration
FROM country 
INNER JOIN city ON country.country_id = city.country_id
INNER JOIN address ON address.city_id = city.city_id
INNER JOIN store ON store.address_id = address.address_id
INNER JOIN staff ON staff.store_id = store.store_id
INNER JOIN rental ON rental.staff_id = staff.staff_id
GROUP BY country.country
ORDER BY country.country;


SELECT customer.last_name FROM customer
WHERE customer.last_name LIKE 'D%'
UNION ALL
SELECT actor.last_name FROM actor
WHERE actor.last_name LIKE 'D%';