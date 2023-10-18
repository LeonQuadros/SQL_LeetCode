/* Write your T-SQL query statement below */

SELECT user_id, ROUND(CAST(SUM(temp1) AS DECIMAL) / COUNT(temp1), 2) AS confirmation_rate
FROM (

SELECT S.user_id, CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END AS temp1
FROM Signups S
LEFT JOIN Confirmations C
ON S.user_id = C.user_id
) T
GROUP BY user_id