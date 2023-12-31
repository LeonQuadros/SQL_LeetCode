/* Write your T-SQL query statement below */

SELECT 'Low Salary' category, SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) accounts_count
FROM Accounts
UNION
SELECT 'Average Salary' category, SUM(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END) accounts_count
FROM Accounts
UNION
SELECT 'High Salary' category, SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) accounts_count
FROM Accounts