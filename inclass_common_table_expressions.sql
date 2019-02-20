WITH hyvee_sales as
(
SELECT store_name, store_number, city, zip_code, sale
FROM iowa_liquor_sales
WHERE lower(store_name) LIKE 'hy-vee%'
), trashed_data as
(
SELECT store_number::integer * 500
FROM hyvee_sales
)
SELECT store_number
FROM hyvee_sales

SELECT *
FROM hyvee_sales

CREATE TEMP TABLE hyvee_sales AS
SELECT store_name, store_number, city, zip_code, sale
FROM iowa_liquor_sales
WHERE lower(store_name) LIKE 'hy-vee%'