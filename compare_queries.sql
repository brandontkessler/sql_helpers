/* SIMPLE QUERY COMPARISON
 * 
 * Use the below template, replace the two queries with queries to test
 * If query returns anything, queries are not equivalent
* */

WITH 
	q1 AS (
		SELECT distinct
			test_col,
			sum(totals)
		FROM test_tbl
		GROUP BY 1
	),
	q2 AS (
		SELECT
			test_col,
			sum(totals)
		FROM test_tbl
		GROUP BY 1
	)
(select * from q1 EXCEPT select * from q2) 
UNION ALL
(select * from q2 EXCEPT select * from q1)