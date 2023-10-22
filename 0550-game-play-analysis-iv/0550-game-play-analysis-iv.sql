/* Write your T-SQL query statement below */

WITH CTE AS(
SELECT player_id, MIN(DATEADD(day,1,event_date)) date_after
FROM Activity
GROUP BY player_id
)

SELECT ROUND(CAST(SUM(CASE WHEN C.player_id = A.player_id AND A.event_date = C.date_after THEN 1 ELSE 0 END) AS FLOAT)/COUNT(DISTINCT(A.player_id)),2) fraction
FROM Activity A, CTE C

