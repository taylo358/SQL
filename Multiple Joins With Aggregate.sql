-- Initialize database
source Initialize.sql

-- Your SELECT statment goes here
SELECT
a.last_name, a.first_name, ROUND(AVG(f.length)) AS average
FROM actor AS a
INNER JOIN film_actor AS fa 
ON a.actor_id = fa.actor_id
Inner JOIN film AS f
ON fa.film_id = f.film_id
GROUP BY a.actor_id, a.last_name, a.first_name 
ORDER BY average DESC, a.last_name ASC;
