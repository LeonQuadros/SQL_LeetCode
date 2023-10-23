/* Write your T-SQL query statement below */

SELECT CASE WHEN (SELECT MAX(id) FROM Seat)%2=1 THEN

(CASE WHEN id IN (SELECT MAX(id) FROM Seat) THEN id
WHEN id%2 = 1 THEN id+1 ELSE id-1 END) 
ELSE (CASE WHEN id%2 = 1 THEN id+1 ELSE id-1 END) END
id, student
FROM Seat
ORDER BY id ASC

