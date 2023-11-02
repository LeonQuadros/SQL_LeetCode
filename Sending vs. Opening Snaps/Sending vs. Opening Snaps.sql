WITH CTE AS 
(SELECT age_bucket ,
        SUM(CASE WHEN activity_type = 'send' THEN time_spent else 0 END) AS only_send,
        SUM(CASE WHEN activity_type = 'open' THEN time_spent else 0 END) AS only_open
FROM activities A
JOIN age_breakdown B ON A.user_id = B.user_id 
GROUP BY age_bucket)


SELECT age_bucket,ROUND(100.00* only_send/(only_send+only_open),2), ROUND(100.00*only_open/(only_send+only_open),2)
FROM CTE
