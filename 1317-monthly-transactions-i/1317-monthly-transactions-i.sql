/* Write your T-SQL query statement below */
WITH CTE AS(
SELECT FORMAT(trans_date,'yyyy-MM') month,country, amount, CASE WHEN state='approved'THEN 1 ELSE 0 END approved_count, CASE WHEN state='approved' THEN amount ELSE 0 END approved_total_amount
FROM Transactions
)

SELECT month, country, COUNT(*) trans_count, SUM(approved_count) approved_count, SUM(amount) trans_total_amount, SUM(approved_total_amount) approved_total_amount
FROM CTE
GROUP BY month, country