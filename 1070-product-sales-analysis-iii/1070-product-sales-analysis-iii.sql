/* Write your T-SQL query statement below */

WITH CTE AS (
SELECT product_id, MIN(year) AS first_year
FROM Sales
GROUP BY product_id)

SELECT C.product_id, C.first_year, S.quantity, S.price
FROM CTE C
JOIN Sales S ON C.product_id = S.product_id and C.first_year = S.year
