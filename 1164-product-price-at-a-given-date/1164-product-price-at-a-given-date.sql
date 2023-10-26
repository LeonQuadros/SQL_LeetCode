/* Write your T-SQL query statement below */

WITH CTE1 AS(
SELECT product_id, new_price price , MAX(change_date) change_date
FROM Products
WHERE change_date <= '2019-08-16'
GROUP BY product_id, new_price
UNION
SELECT DISTINCT product_id, 10 price, '1970-01-01' change_date
FROM Products
)
,
CTE2 AS(
SELECT product_id, MAX(change_date) change_date
FROM CTE1
GROUP BY product_id
)

SELECT CTE1.product_id, price
FROM CTE1, CTE2
WHERE CTE1.product_id = CTE2.product_id AND CTE1.change_date = CTE2.change_date