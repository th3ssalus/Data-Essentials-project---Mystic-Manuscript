--------------------------------------------------------------------
-- ID: PA5
-- Check: Checking the number of rows -> 3480

SELECT COUNT(*)
FROM student.pineapple_mystic_new ;

--------------------------------------------------------------------
-- ID: PA6
-- Check: Counting distinct rows -> 3480, so no duplicates

SELECT COUNT(DISTINCT(id))
FROM student.pineapple_mystic_new ;

--------------------------------------------------------------------
-- ID: PA7
-- Check: Sum of column sums -> 11,680,962.79
SELECT
	SUM(quarter_id) + SUM(year_of_purchase) + SUM(month_of_purchase) + SUM(day_of_month) + SUM(special_day) + SUM(online_sale_offers)
	+ SUM(day_of_week) + SUM(weekend) + SUM(morning) + SUM(afternoon) + SUM(evening) + SUM(night) + SUM(gender_binary)
	+ SUM(quantity) + SUM(item_price) + SUM(shipping_price) + SUM(total_payment) + SUM(profit_percentage) + SUM(profit_inr) 
	+ SUM(cost_price)
FROM 
	student.pineapple_mystic_new ;

--------------------------------------------------------------------
-- ID: PA8
-- Check: Sum of row sums -> 11,680,962.79
SELECT
	SUM(quarter_id + year_of_purchase + month_of_purchase + day_of_month + special_day + online_sale_offers + day_of_week + weekend + 
	morning + afternoon + evening + night + gender_binary + quantity + item_price + shipping_price + total_payment + profit_percentage +
	profit_inr + cost_price)
FROM 
	student.pineapple_mystic_new ;

--------------------------------------------------------------------
-- ID: PA9
-- Check: Counting nulls

SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	id IS NULL ;

SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	purchase_date IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	day_of_purchase IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	time_of_purchase IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	quarter IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	quarter_id IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	year_of_purchase IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	month_of_purchase IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	day_of_month IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	special_day IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	online_sale_offers IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	day_of_week IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	weekend IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	morning IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	afternoon IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	evening IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	night IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	gender_binary IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	customer_id IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	gender IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	product_name IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	item_status IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	quantity IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	currency IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	item_price IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	shipping_price IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	ship_city IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	ship_postal_code IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	category IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	total_payment IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	author IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	publisher IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	profit_percentage IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	profit_inr IS NULL ;
	
SELECT
	COUNT(*)
FROM 
	student.pineapple_mystic_new
WHERE 
	cost_price IS NULL ;


--------------------------------------------------------------------
-- ID: PA10
-- Check: Sum, min, max of each column

SELECT 
	SUM(id) ,
	MIN(id) ,
	MAX(id)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(time_of_purchase) ,
	MIN(time_of_purchase) ,
	MAX(time_of_purchase)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(quarter_id) ,
	MIN(quarter_id) ,
	MAX(quarter_id)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(year_of_purchase) ,
	MIN(year_of_purchase) ,
	MAX(year_of_purchase)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(month_of_purchase) ,
	MIN(month_of_purchase) ,
	MAX(month_of_purchase)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(day_of_month) ,
	MIN(day_of_month) ,
	MAX(day_of_month)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(special_day) ,
	MIN(special_day) ,
	MAX(special_day)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(online_sale_offers) ,
	MIN(online_sale_offers) ,
	MAX(online_sale_offers)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(day_of_week) ,
	MIN(day_of_week) ,
	MAX(day_of_week)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(weekend) ,
	MIN(weekend) ,
	MAX(weekend)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(morning) ,
	MIN(morning) ,
	MAX(morning)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(afternoon) ,
	MIN(afternoon) ,
	MAX(afternoon)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(evening) ,
	MIN(evening) ,
	MAX(evening)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(night) ,
	MIN(night) ,
	MAX(night)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(gender_binary) ,
	MIN(gender_binary) ,
	MAX(gender_binary)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(quantity) ,
	MIN(quantity) ,
	MAX(quantity)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(item_price) ,
	MIN(item_price) ,
	MAX(item_price)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(shipping_price) ,
	MIN(shipping_price) ,
	MAX(shipping_price)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(total_payment) ,
	MIN(total_payment) ,
	MAX(total_payment)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(profit_percentage) ,
	MIN(profit_percentage) ,
	MAX(profit_percentage)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(profit_inr) ,
	MIN(profit_inr) ,
	MAX(profit_inr)
FROM
	student.pineapple_mystic_new ;
	
SELECT 
	SUM(cost_price) ,
	MIN(cost_price) ,
	MAX(cost_price)
FROM
	student.pineapple_mystic_new ;

--------------------------------------------------------------------
-- ID: PA11
-- Check: Date format check

SELECT id , day_of_purchase 
FROM student.pineapple_mystic_new
ORDER BY RANDOM()
LIMIT 5;

--------------------------------------------------------------------
-- ID: PA12
-- Check: Eyeball check

SELECT *
FROM student.pineapple_mystic_new
ORDER BY RANDOM()
LIMIT 5;


