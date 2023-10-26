/* Write your T-SQL query statement below */

WITH CTE AS(
SELECT turn Turn, person_id ID, person_name,weight Weight, SUM(Weight) OVER (ORDER BY turn ASC) Total_Weight
FROM Queue)

SELECT TOP 1 person_name
FROM CTE
WHERE Total_Weight <= 1000
ORDER BY Total_Weight DESC