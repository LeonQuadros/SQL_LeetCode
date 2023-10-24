/* Write your T-SQL query statement below */

SELECT C.product_id, C.first_year, S.quantity, S.price
FROM 
(
SELECT product_id, MIN(year) AS first_year
FROM Sales
GROUP BY product_id) C
JOIN Sales S ON C.product_id = S.product_id and C.first_year = S.year
