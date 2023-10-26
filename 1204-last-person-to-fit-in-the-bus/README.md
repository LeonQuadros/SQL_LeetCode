<h2><a href="https://leetcode.com/problems/last-person-to-fit-in-the-bus/">1204. Last Person to Fit in the Bus</a></h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg" usedbyfluent="true">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p usedbyfluent="true">Table: <code>Queue</code></p>

<pre>+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| person_id   | int     |
| person_name | varchar |
| weight      | int     |
| turn        | int     |
+-------------+---------+
person_id column contains unique values.
This table has the information about all people waiting for a bus.
The person_id and turn columns will contain all numbers from 1 to n, where n is the number of rows in the table.
turn determines the order of which the people will board the bus, where turn=1 denotes the first person to board and turn=n denotes the last person to board.
weight is the weight of the person in kilograms.
</pre>

<p usedbyfluent="true">&nbsp;</p>

<p usedbyfluent="true">There is a queue of people waiting to board a bus. However, the bus has a <span id="17bbad0e-66b4-4605-ad03-c1a3f7fbd065" class="fluent-translated ready fluent-underline" fluent-original-text="weight" style="background-color: rgba(96, 173, 255, 0.3); border-bottom-color: transparent; line-height: 15px;">weight</span> limit of <code>1000</code><strong usedbyfluent="true"> kilograms</strong>, so there may be some people who cannot board.</p>

<p usedbyfluent="true">Write a solution to find the <code>person_name</code> of the <strong usedbyfluent="true">last person</strong> that can fit on the bus without <span id="17c0abc8-df94-4bc2-b5c1-e2708f661ffc" class="fluent-translated fluent-underline ready" fluent-original-text="exceeding" style="background-color: rgba(96, 173, 255, 0.3); border-bottom-color: transparent; line-height: 15px;">exceeding</span> the weight limit. The test cases are generated such that the first person does not exceed the weight limit.</p>

<p usedbyfluent="true">The&nbsp;result format is in the following example.</p>

<p usedbyfluent="true">&nbsp;</p>
<p><strong class="example" usedbyfluent="true">Example 1:</strong></p>

<pre><strong>Input:</strong> 
Queue table:
+-----------+-------------+--------+------+
| person_id | person_name | weight | turn |
+-----------+-------------+--------+------+
| 5         | Alice       | 250    | 1    |
| 4         | Bob         | 175    | 5    |
| 3         | Alex        | 350    | 2    |
| 6         | John Cena   | 400    | 3    |
| 1         | Winston     | 500    | 6    |
| 2         | Marie       | 200    | 4    |
+-----------+-------------+--------+------+
<strong>Output:</strong> 
+-------------+
| person_name |
+-------------+
| John Cena   |
+-------------+
<strong>Explanation:</strong> The folowing table is ordered by the turn for simplicity.
+------+----+-----------+--------+--------------+
| Turn | ID | Name      | Weight | Total Weight |
+------+----+-----------+--------+--------------+
| 1    | 5  | Alice     | 250    | 250          |
| 2    | 3  | Alex      | 350    | 600          |
| 3    | 6  | John Cena | 400    | 1000         | (last person to board)
| 4    | 2  | Marie     | 200    | 1200         | (cannot board)
| 5    | 4  | Bob       | 175    | ___          |
| 6    | 1  | Winston   | 500    | ___          |
+------+----+-----------+--------+--------------+
</pre>
</div>