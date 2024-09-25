--AGGREGATE
--1 Write a query that determines how many times each vendor has rented a booth ................
-- SELECT vendor_id, COUNT(*) AS booth_count
-- FROM vendor_booth_assignments
-- GROUP BY vendor_id;
--2 The Farmer’s Market Customer Appreciation Committee wants to give a bumper .......................
-- SELECT c.customer_id, c.customer_first_name, c.customer_last_name, SUM(cp.quantity*cp.cost_to_customer_per_qty) AS total_spent
-- FROM customer as c
-- JOIN customer_purchases as cp ON c.customer_id=cp.customer_id
-- GROUP BY c.customer_id
-- HAVING total_spent > 2000
-- ORDER BY c.customer_last_name, c.customer_first_name;

--TEMP TABLE
--1 Insert the original vendor table into a temp.new_vendor and then add a 10th vendor: .......
-- CREATE TEMPORARY TABLE new_vendor AS
-- SELECT * FROM vendor

--Inserting 10th row in the temp table 'new_vendor'
-- INSERT INTO new_vendor (vendor_id, vendor_name, vendor_type, vendor_owner_first_name, vendor_owner_last_name)
-- VALUES (10, 'Thomass Superfood Store', 'Fresh Focused', 'Thomas', 'Rosenthal');

--testing new temporary table VALUES
-- SELECT * FROM new_vendor

--date
--1 Get the customer_id, month, and year (in separate columns) of every purchase in the customer_purchases table.
-- SELECT customer_id,
-- 				strftime ('%m', market_date) AS month_market_date,
-- 				strftime ('%Y', market_date) AS year_market_date
-- FROM customer_purchases;

--2 Using the previous query as a base, determine how much money each customer spent in April 2022. 
-- SELECT 	customer_id,
-- 					strftime('%Y', market_date) AS year_market_date, 
-- 					strftime('%m',market_date) AS month_market_date,
-- 					SUM(quantity * cost_to_customer_per_qty) AS total_spent
-- FROM customer_purchases
-- WHERE  year_market_date = '2022'
-- AND month_market_date  ='04'
-- GROUP BY customer_id
-- ORDER BY customer_id ASC;


