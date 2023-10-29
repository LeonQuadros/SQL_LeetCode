<h2><a href="https://leetcode.com/problems/restaurant-growth/">1321. Restaurant Growth</a></h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg" usedbyfluent="true">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p usedbyfluent="true">Table: <code>Customer</code></p>

<pre>+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| customer_id   | int     |
| name          | varchar |
| visited_on    | date    |
| amount        | int     |
+---------------+---------+
In SQL,(customer_id, visited_on) is the primary key for this table.
This table contains data about customer transactions in a restaurant.
visited_on is the date on which the customer with ID (customer_id) has visited the restaurant.
amount is the total paid by a customer.
</pre>

<p usedbyfluent="true">&nbsp;</p>

<p usedbyfluent="true">You are the restaurant owner and you <span id="e2720960-99f2-4e44-9543-dc3a87724ef3" class="fluent-translated ready fluent-underline" fluent-original-text="want" style="background-color: rgba(96, 173, 255, 0.3); border-bottom-color: transparent; line-height: 15px;">want</span> to analyze a possible expansion (there will be at least one <span id="a9053cb9-6f0f-48e0-aa44-bbc237aa4823" class="fluent-translated ready fluent-underline" fluent-original-text="customer" style="background-color: rgba(96, 173, 255, 0.3); border-bottom-color: transparent; line-height: 15px;">customer</span> every day).</p>

<p usedbyfluent="true">Compute the moving <span id="405ab184-abe5-4de7-b4bf-cdde202b0ef4" class="fluent-translated fluent-underline ready" fluent-original-text="average" style="background-color: rgba(96, 173, 255, 0.3); border-bottom-color: transparent; line-height: 15px;">average</span> of how much the customer paid in a seven days <span id="1b0cdf56-eecf-4fac-9a6e-4b1f14606cc0" class="fluent-translated fluent-underline ready" fluent-original-text="window" style="background-color: rgba(96, 173, 255, 0.3); border-bottom-color: transparent; line-height: 15px;">window</span> (i.e., current day + 6 days before). <code>average_amount</code> should be <strong usedbyfluent="true">rounded to two decimal places</strong>.</p>

<p usedbyfluent="true">Return the result table ordered by <code>visited_on</code> <strong usedbyfluent="true">in ascending order</strong>.</p>

<p usedbyfluent="true">The result format is in the following example.</p>

<p usedbyfluent="true">&nbsp;</p>
<p><strong class="example" usedbyfluent="true">Example 1:</strong></p>

<pre><strong>Input:</strong> 
Customer table:
+-------------+--------------+--------------+-------------+
| customer_id | name         | visited_on   | amount      |
+-------------+--------------+--------------+-------------+
| 1           | Jhon         | 2019-01-01   | 100         |
| 2           | Daniel       | 2019-01-02   | 110         |
| 3           | Jade         | 2019-01-03   | 120         |
| 4           | Khaled       | 2019-01-04   | 130         |
| 5           | Winston      | 2019-01-05   | 110         | 
| 6           | Elvis        | 2019-01-06   | 140         | 
| 7           | Anna         | 2019-01-07   | 150         |
| 8           | Maria        | 2019-01-08   | 80          |
| 9           | Jaze         | 2019-01-09   | 110         | 
| 1           | Jhon         | 2019-01-10   | 130         | 
| 3           | Jade         | 2019-01-10   | 150         | 
+-------------+--------------+--------------+-------------+
<strong>Output:</strong> 
+--------------+--------------+----------------+
| visited_on   | amount       | average_amount |
+--------------+--------------+----------------+
| 2019-01-07   | 860          | 122.86         |
| 2019-01-08   | 840          | 120            |
| 2019-01-09   | 840          | 120            |
| 2019-01-10   | 1000         | 142.86         |
+--------------+--------------+----------------+
<strong>Explanation:</strong> 
1st moving average from 2019-01-01 to 2019-01-07 has an average_amount of (100 + 110 + 120 + 130 + 110 + 140 + 150)/7 = 122.86
2nd moving average from 2019-01-02 to 2019-01-08 has an average_amount of (110 + 120 + 130 + 110 + 140 + 150 + 80)/7 = 120
3rd moving average from 2019-01-03 to 2019-01-09 has an average_amount of (120 + 130 + 110 + 140 + 150 + 80 + 110)/7 = 120
4th moving average from 2019-01-04 to 2019-01-10 has an average_amount of (130 + 110 + 140 + 150 + 80 + 110 + 130 + 150)/7 = 142.86
</pre>
</div>