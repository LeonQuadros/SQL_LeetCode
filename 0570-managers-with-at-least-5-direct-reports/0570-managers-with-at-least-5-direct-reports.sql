/* Write your T-SQL query statement below */

WITH CTE AS (
SELECT managerId, count(managerId) AS count
FROM Employee
GROUP BY managerId
)

SELECT name FROM CTE
JOIN Employee 
ON Employee.id = CTE.managerId
WHERE CTE.count >= 5