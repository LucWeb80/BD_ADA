/* PROJETO DE BANCO DE DADOS P.2 */

/* 1. Quais são os filmes (film.title), suas respectivas categorias (category.name) e idioma (language.name)?
sql */

SELECT 
    f.title AS film_title,
    c.name AS category_name,
    l.name AS language_name
FROM 
    film f
JOIN 
    film_category fc ON f.film_id = fc.film_id
JOIN 
    category c ON fc.category_id = c.category_id
JOIN 
    language l ON f.language_id = l.language_id;


/* 2. Quais foram os filmes alugados entre os dias 1 de fevereiro e 15 de março de 2006 na loja 1 (store_id = 1)? */
SELECT 
    f.title AS film_title,
    r.rental_date
FROM 
    rental r
JOIN 
    inventory i ON r.inventory_id = i.inventory_id
JOIN 
    film f ON i.film_id = f.film_id
WHERE 
    r.rental_date BETWEEN '2006-02-01' AND '2006-03-15'
AND 
    i.store_id = 1;


   
   
/* 3. Qual a quantidade de vezes que cada filme foi alugado? */
   SELECT 
    f.title AS film_title,
    COUNT(r.rental_id) AS rental_count
FROM 
    film f
JOIN 
    inventory i ON f.film_id = i.film_id
JOIN 
    rental r ON i.inventory_id = r.inventory_id
GROUP BY 
    f.title;

/* 4. Para cada funcionário (staff.staff_id), qual é o valor total retornado em locações (payment.amount) e qual é a quantidade total de locações (rental.rental_id)?*/
   
   SELECT 
    s.staff_id,
    COUNT(r.rental_id) AS total_rentals,
    SUM(p.amount) AS total_amount
FROM 
    staff s
JOIN 
    rental r ON s.staff_id = r.staff_id
JOIN 
    payment p ON r.rental_id = p.rental_id
GROUP BY 
    s.staff_id;

   
 /* 5. Qual é o nome de categoria de filme (category.name) que nos retorna mais dinheiro no total (payment.amount)? */
   
   SELECT 
    c.name AS category_name,
    SUM(p.amount) AS total_revenue
FROM 
    payment p
JOIN 
    rental r ON p.rental_id = r.rental_id
JOIN 
    inventory i ON r.inventory_id = i.inventory_id
JOIN 
    film_category fc ON i.film_id = fc.film_id
JOIN 
    category c ON fc.category_id = c.category_id
GROUP BY 
    c.name
ORDER BY 
    total_revenue DESC
LIMIT 1;
