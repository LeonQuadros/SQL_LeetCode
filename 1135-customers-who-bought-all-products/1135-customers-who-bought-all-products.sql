/* Write your T-SQL query statement below */
WITH CTE AS(
SELECT C.customer_id, COUNT(DISTINCT(C.product_key)) temp1
FROM Product P
JOIN Customer C
ON C.product_key = P.product_key
GROUP BY C.customer_id
)

SELECT customer_id FROM CTE
WHERE temp1 = (SELECT COUNT(*) FROM Product)