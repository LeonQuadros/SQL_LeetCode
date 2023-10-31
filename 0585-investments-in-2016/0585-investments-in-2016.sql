/* Write your T-SQL query statement below */
WITH latlon AS(
SELECT CONCAT(lat,lon) latlon,COUNT(CONCAT(lat,lon)) cnt
FROM Insurance
GROUP BY CONCAT(lat,lon))
,
t15 AS(
SELECT tiv_2015 t15, COUNT(tiv_2015) cnt
FROM Insurance
GROUP BY tiv_2015
)

SELECT ROUND(SUM(tiv_2016),2) tiv_2016
FROM Insurance
WHERE tiv_2015 IN (SELECT t15 FROM t15 WHERE cnt > 1)
AND CONCAT(lat,lon) IN (SELECT latlon FROM latlon WHERE cnt = 1)
