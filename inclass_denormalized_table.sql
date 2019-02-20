SELECT DISTINCT candy_type
FROM candy_purchases
WHERE lower(candy_type) LIKE '%kit%' 
AND NOT lower(candy_type) LIKE 'skittles'

UPDATE candy_purchases
SET candy_id = 1
WHERE lower(candy_type) LIKE '%kit%' 
AND NOT lower(candy_type) LIKE 'skittles'

-- GRANT ALL ON candy_purchases to students
SELECT *
FROM candy_purchases;

ALTER TABLE candy_purchases
ADD candy_id integer;

SELECT candy_type
FROM candy_purchases
WHERE candy_type LIKE '%kit%'

SELECT *
FROM iowa_liquor_sales
LIMIT 10

--Items that are rum
--Hyvee Store sales by city
CREATE Table colors(
id integer,
joinkey integer,
color text
);

GRANT ALL ON colors to students;
TRUNCATE colors;
INSERT INTO colors (id, joinkey, color) 
VALUES 
(1, 1, 'red'),
(2, 2, 'green'),
(3, 3, 'blue'),
(4, 4, 'red'),
(5, 4, 'green'),
(6, 5, 'blue'),
(7, 5, 'green'),
(8, 6, 'red'),
(9, 6, 'green');

SELECT color
-- array_agg(color)
FROM colors
WHERE joinkey = 5
-- GROUP BY joinkey

