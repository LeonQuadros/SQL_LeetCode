WITH CTE AS (SELECT  ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY transaction_date),*
FROM transactions)

SELECT user_id,spend,transaction_date FROM CTE
WHERE row_number = 3
