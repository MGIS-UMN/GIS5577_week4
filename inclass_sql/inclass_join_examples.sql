CREATE TABLE table_one(id integer, value varchar(5));
INSERT INTO table_one (id, value) VALUES (1, 'a'),(4,'d'),(2,'b');
CREATE TABLE table_two(id integer, value varchar(5));
INSERT INTO table_two (id, value) VALUES (2, 'x'),(3,'y'),(5,'v');


SELECT t1.id, t2.id
FROM table_one as t1 INNER JOIN table_two as t2 ON (t2.id = t1.id)
-- WHERE t2.id IS NULL
-- WHERE 
-- INNER JOIN ON

SELECT *
FROM (
	SELECT store_name, store_number, city, zip_code, sale
	FROM iowa_liquor_sales
	WHERE lower(store_name) LIKE 'hy-vee%'
	) as hyvee_sales,
	(
	SELECT store_number, array_agg(item_description)
	FROM iowa_liquor_sales
	WHERE lower(store_name) LIKE 'hy-vee%'
	GROUP BY store_number
	) as hyvee_items 
WHERE hyvee_items.store_number = hyvee_sales.store_number
	


SELECT *
FROM iowa_liquor_sales
LIMIT 10