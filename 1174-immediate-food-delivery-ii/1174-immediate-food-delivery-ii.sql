/* Write your T-SQL query statement below */

WITH FO AS (
SELECT customer_id, MIN(order_date) first_date
FROM Delivery
GROUP BY customer_id)
,
IO AS (
SELECT customer_id, delivery_id, order_date
FROM Delivery
WHERE order_date = customer_pref_delivery_date 
)

SELECT ROUND(CAST(SUM(CASE WHEN FO.customer_id = IO.customer_id AND FO.first_date = IO.order_date THEN 1 ELSE 0 END) AS FLOAT)/COUNT(DISTINCT(FO.customer_id)) * 100,2) immediate_percentage 
FROM FO,IO
