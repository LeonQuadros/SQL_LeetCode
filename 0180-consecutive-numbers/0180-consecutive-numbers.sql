/* Write your T-SQL query statement below */

WITH CTE AS(
SELECT id, num num1, LEAD(num,1,0) OVER(ORDER BY id) num2, LEAD(num,2,0) OVER(ORDER BY id) num3
FROM Logs)
SELECT DISTINCT num1 ConsecutiveNums
FROM CTE
WHERE num1 = num2 AND num2 = num3 AND id NOT IN (SELECT MAX(id) FROM Logs)