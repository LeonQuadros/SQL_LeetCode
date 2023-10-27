/* Write your T-SQL query statement below */

WITH CTE1 AS(
SELECT TOP 1 U.name results
FROM Users U
JOIN MovieRating MR ON U.user_id = MR.user_id
GROUP BY U.name
ORDER BY COUNT(rating) DESC,U.name)
,
CTE2 AS(
SELECT TOP 1 M.title results
FROM MovieRating MR
JOIN Movies M ON M.movie_id = MR.movie_id
WHERE MR.created_at BETWEEN '02-01-2020' AND '02-29-2020'
GROUP BY M.title
ORDER BY ROUND(AVG(CAST(rating AS FLOAT)),4) DESC, M.title)

SELECT * FROM CTE1
UNION ALL
SELECT * FROM CTE2