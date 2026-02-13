| Requirement                         | Join Type    |
| ----------------------------------- | ------------ |
| Keep all rows from first table      | `LEFT JOIN`  |
| Only matching rows from both tables | `INNER JOIN` |


-------------------------------------------------------------------
SELECT i.firstname,
       i.lastname,
       j.city,
       j.state
FROM   person AS i
LEFT JOIN address AS j
ON i.personid = j.personid 


--------------------------------------------------------------------------- Aggregate

SELECT 
    (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET 1
    ) AS SecondHighestSalary;
	
DISTINCT  ---removes duplicate salaries
ORDER BY salary DESC ----sorts highest first
OFFSET 1 ------skips the highest salary
LIMIT 1 -----picks the second highest

-----------------------------------------------------------------------------
SELECT salary AS SecondHighestSalary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rank_no
    FROM Employee
) t
WHERE rank_no = 2;

---------------------------------------------------------------------- window function 

ROW_NUMBER()
RANK()
DENSE_RANK()
LAG(), LEAD()
SUM() OVER()
AVG() OVER()