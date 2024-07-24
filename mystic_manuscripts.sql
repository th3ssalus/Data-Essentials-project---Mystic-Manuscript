-----------------------------------------------------------------------------
-- Creating a table

CREATE TABLE student.pineapple_mystic (
	id INT ,
	purchase_date TIMESTAMP , 
	"date" DATE ,
	time_of_purchase TIME ,
	quarter VARCHAR ,
	quarter_id INT ,
	"year" YEAR ,
	"month" INT ,
	day_of_month INT ,
	special_day BOOL ,
	online_sale_offers BOOL ,
	day_of_week INT ,
	weekend BOOL ,
	morning BOOL ,
	afternoon BOOL ,
	evening BOOL ,
	night BOOL ,
	gender_id BOOL ,
	customer_id VARCHAR ,
	gender CHAR ,
	product_name TEXT ,
	item_status VARCHAR ,
	quantity INT ,
	currency VARCHAR ,
	item_price NUMERIC(18, 2) ,
	shipping_price NUMERIC(18, 2) ,
	ship_city VARCHAR ,
	ship_state VARCHAR ,
	ship_postal_code VARCHAR ,
	category VARCHAR ,
	total_payment NUMERIC(18, 2) ,
	author VARCHAR ,
	"publication" VARCHAR ,
	profit_percentage NUMERIC(18, 2) ,
	profit_inr NUMERIC(18, 2) ,
	cost_price NUMERIC(18, 2)
) ;

--------------------------------------------------------------------
-- ID: PA1
-- Check: Catching error in purchase dates

ALTER TABLE student.pineapple_mystic 
	ALTER COLUMN purchase_date TYPE VARCHAR ;

-- Finding all entries where hour >= 24

SELECT
	id ,
	SUBSTRING(purchase_date, 12, 2)::INT AS ExtractString
FROM
	student.pineapple_mystic
WHERE
	SUBSTRING(purchase_date, 12, 2)::INT >= 24;

--------------------------------------------------------------------
-- ID: PA2
-- Check: Checking the number of rows -> 3588

SELECT COUNT(*)
FROM student.pineapple_mystic ;

--------------------------------------------------------------------
-- ID: PA3
-- Check: Counting distinct rows -> 3480

SELECT COUNT(DISTINCT(id))
FROM student.pineapple_mystic ;

--------------------------------------------------------------------
-- ID: PA4
-- Check: Identifying duplicate purchase IDs

SELECT id, COUNT(*) AS num_duplicates
FROM student.pineapple_mystic
GROUP BY id
HAVING COUNT(*) > 1
ORDER BY id;

-- Checking if all the data containing a duplicate ID is the same

SELECT *
FROM student.pineapple_mystic
WHERE id BETWEEN 73 AND 90 
ORDER BY id;

--------------------------------------------------------------------
-- Creating new table based on version 2 of the source data

CREATE TABLE student.pineapple_mystic_new (
	id INT ,
	purchase_date TIMESTAMP , 
	day_of_purchase DATE ,
	time_of_purchase TIME ,
	quarter VARCHAR ,
	quarter_id INT ,
	year_of_purchase YEAR ,
	month_of_purchase INT ,
	day_of_month INT ,
	special_day INT ,
	online_sale_offers INT ,
	day_of_week INT ,
	weekend INT ,
	morning INT ,
	afternoon INT ,
	evening INT ,
	night INT ,
	gender_binary INT ,
	customer_id VARCHAR ,
	gender CHAR ,
	product_name TEXT ,
	item_status VARCHAR ,
	quantity INT ,
	currency VARCHAR ,
	item_price NUMERIC ,
	shipping_price NUMERIC ,
	ship_city VARCHAR ,
	ship_state VARCHAR ,
	ship_postal_code VARCHAR ,
	category VARCHAR ,
	total_payment NUMERIC ,
	author VARCHAR ,
	publisher VARCHAR ,
	profit_percentage NUMERIC ,
	profit_inr NUMERIC ,
	cost_price NUMERIC
) ;

-- 

SELECT id, COUNT(*) AS num_duplicates
FROM student.pineapple_mystic_v2 
GROUP BY id
HAVING COUNT(*) > 1
ORDER BY id;

--------------------------------------------------------------------
-- Cleaning: Setting strings to title case

UPDATE
	student.pineapple_mystic_new
SET
	product_name = INITCAP(product_name) ,
	item_status = INITCAP(item_status) ,
	ship_city  = INITCAP(ship_city) ,
	ship_state  = INITCAP(ship_state) ,
	category  = INITCAP(category) ,
	author  = INITCAP(author) ,
	publisher  = INITCAP(publisher) ;

--------------------------------------------------------------------
-- Cleaning: Removing leading whitespaces
-- Attempted to clean whitespaces:
-- 1) attempted during import
-- 2) attempted in code, see below

UPDATE student.pineapple_mystic_new
SET publisher  = TRIM(publisher);

-- Checks

SELECT LENGTH(publisher) AS original_length,
       LENGTH(TRIM(publisher)) AS trimmed_length
FROM student.pineapple_mystic_new;

SELECT publisher
FROM student.pineapple_mystic_new
WHERE publisher LIKE ' %';

--------------------------------------------------------------------
-- Need to ask the client about this
-- Identifying discrepancies in purchase time in purchase_date and time_of_pourchase columns

SELECT COUNT(*)
FROM student.pineapple_mystic_new
WHERE time_of_purchase != CAST(purchase_date AS TIME)
