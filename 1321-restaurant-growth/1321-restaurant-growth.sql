/* Write your T-SQL query statement below */

WITH CTE1 AS(
SELECT visited_on, CAST(SUM(amount) AS FLOAT) amount, ROW_NUMBER() OVER(ORDER BY visited_on) rn
FROM Customer
GROUP BY visited_on)
,
CTE2 as(
SELECT visited_on, rn, SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) amount, ROUND(CAST(AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS FLOAT),2) average_amount
FROM CTE1)

SELECT visited_on, amount, average_amount FROM CTE2
WHERE rn > 6

