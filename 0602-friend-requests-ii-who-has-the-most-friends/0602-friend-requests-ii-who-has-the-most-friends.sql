/* Write your T-SQL query statement below */

WITH CTE AS(
SELECT accepter_id id, COUNT(accepter_id) num
FROM RequestAccepted
GROUP BY accepter_id
UNION ALL
SELECT requester_id id, COUNT(requester_id) num
FROM RequestAccepted
GROUP BY requester_id
)

SELECT TOP 1 id, SUM(num) num
FROM CTE
GROUP BY id
ORDER BY SUM(num) DESC