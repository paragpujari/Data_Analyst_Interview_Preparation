------------------------------------------------------NULL AND NULL Handling---------------------------------------------------------------------------------------------
/*
	NULL	-------------->	It can be considered as missing or an unknown value. It is not 0 or ' '. It cannot be compared with == or !=.

	Employee_ID	Employee_Name	Department	Salary
		101			Rahul	        IT		50000
		102			Priya	        HR		NULL
		103			Amit	        NULL	60000
		104			Sneha	        Finance	0
		105			Raj		        IT		45000


	Observations:

	(a.)	From the above dataset, we came to the cnclusion that Priya salary is missing

	(b.)	Amit department is missing

	(c.)	Sneha salary is 0.


	Important NULL Handling Operators and Functions

			Operator							Purpose

	(a.)	IS NULL			----------->		Identifies the NULL Values

	(b.)	IS NOT NULL		----------->		Identifies the NOT NULL Values

	(c.)	ISNULL()		----------->		Replaces the NULL Value with the NOT NULL Value.

	(d.)	COLEASCE        ----------->		Returns the first NOT NULL Value.

	(e.)	NULLIF()		----------->		Returns NULL if both the expressions are true

	(f.)	CASE WHEN		----------->		It applies case condition to first NOT NULL Value

	(g.)	COUNT(*)		----------->		It counts all rows including NULL as well as NOT NULL Values

	(h.)	COUNT(col)		----------->		It counts the NOT NULL Values.
*/

----------------------------------------------------------------------------Concepts---------------------------------------------------------------------
---1.	Find out the employees whose salary is missing
SELECT * FROM Employees WHERE salary IS NULL ------(handles the missing salary values)
---2.	Find out the employees whose salary is not missing
SELECT * FROM Employees WHERE salary IS NOT NULL ---(handles the non missing salary values)
---3.	Replace the NULL salary value with 0
SELECT *,ISNULL(salary,0) as new_salary FROM Employees ---(checks for the missing value in the column and replaces the NULL salary with 0)
---4.	Assign 'Not assigned' for the missing salary value, department, email
SELECT *,COALESCE(department,'Not assigned') as new_department,COALESCE(salary,0) as new_salary,COALESCE(email,'Not assigned') as new_email, COALESCE(dept_id,0) as new_departid FROM Employees
---5.	Returns true for both the same salary
SELECT NULLIF(53874,53874) AS result -------------> Returns NULL value for both the same salaries
---6.	Assign the category of salary (if salary is missing ----> 'Salary Missing', if salary is 0 ----> 'Zero salary', if salary is not missing ----> 'Salary Available')
SELECT *,CASE WHEN salary IS NULL	THEN	'Salary Missing'
			  WHEN salary = 0       THEN    'Salary is zero'
			                        ELSE    'Salary Available'
									END AS  Salary_Category
									FROM Employees
									ORDER BY salary
---7. Use coalesce to perform expression
SELECT COALESCE(NULL,NULL,100,200) AS Result
-----------------------------------------------------------------------Examples--------------------------------------------------------------------------
---1.	Display employees whose salary is NULL
SELECT * FROM Employees WHERE salary IS NULL
---2.	Display employees whose salary is NOT NULL
SELECT * FROM Employees WHERE salary IS NOT NULL
---3.	Replace NULL salary with zero
SELECT *,ISNULL(salary,0) AS New_salary FROM Employees
---4.	Replace NULL department with 'Not Assigned'
SELECT *,COALESCE(department,'Not Assigned') as new_department FROM Employees
SELECT *,ISNULL(department,'Not Assigned') as new_department FROM Employees
---5.	Replace NULL dept_id with zero using COALESCE
SELECT *,COALESCE(dept_id,0) as new_deptid FROM Employees
---6.	Display employees whose salary is either NULL or zero
SELECT * FROM Employees WHERE salary IS NULL OR salary = 0 ORDER BY salary
---7.	Count total employees and employees having salary
SELECT COUNT(*) AS Total_employees, COUNT(salary) AS Total_employees_having_salaries FROM Employees
---8.	Calculate total salary excluding NULL values
SELECT SUM(salary) AS Total_salary FROM Employees WHERE salary IS NOT NULL
---9.	Calculate total salary by replacing NULL salary with zero
;with cte as(
SELECT *,ISNULL(salary,0) as new_salary FROM Employees
)
SELECT SUM(new_salary) AS Total_new_salary FROM cte
---10.	Categorize employees based on salary availability
SELECT *,CASE WHEN salary IS NULL	THEN	'Missing'
			  WHEN salary = 0       THEN    'Zero'
			                        ELSE    'Available'
									END AS  Salary_Category
									FROM Employees
									ORDER BY salary

---------------------------------------------Solve Interview Questions-----------------------------------------------------------------------------------------

-------------------------------Accenture-------------------------------------------------------
---	(1.)	Display all employees whose salary is NULL.
SELECT * FROM Employees WHERE salary IS NULL
---(2.)		Display all employees whose department is NOT NULL.
SELECT * FROM Employees WHERE department IS NOT NULL
--- (3.)	Replace NULL salary values with zero using ISNULL().
SELECT *,ISNULL(salary,0) as new_salary FROM Employees ORDER BY salary
--- (4.)	Count the total number of employees and employees with non-NULL salaries.
SELECT COUNT(*) AS Total_employees, COUNT(salary) AS Total_employee_salary FROM Employees
--- (5.)	Display employees whose salary is either NULL or zero.
SELECT * FROM Employees WHERE salary IS NULL OR salary = 0

--------------------------Cognizant-------------------------------------------------------------
---(1.)	Replace NULL department values with 'Unassigned' using COALESCE().
SELECT *,COALESCE(department,'Unassigned') as new_department FROM Employees
---(2.)	Display employee name, salary after replacing NULL values with zero.
SELECT emp_name,salary,COALESCE(salary,0) as new_salary FROM Employees
---(3.)	Find the total salary, average salary, and employee count while considering NULL values.
SELECT SUM(salary) as Total_salary, AVG(salary) AS Average_salary, COUNT(1) AS Employee_count FROM Employees
---(4.)	Identify employees whose salary and department are both NULL.
SELECT * FROM Employees WHERE salary IS NULL AND department IS NULL
---(5.)	Use CASE WHEN to classify employees into Missing Salary, Zero Salary, and Available Salary categories.
SELECT *,CASE WHEN salary IS NULL	THEN	'Missing'
			  WHEN salary = 0       THEN    'Zero'
			                        ELSE    'Available'
									END AS  Salary_Category
									FROM Employees
									ORDER BY salary

--------------------------Coding Interview Questions------------------------------------------------
---(1.) Write a query to find the percentage of employees whose salary is NULL.
;with cte1 as(
SELECT COUNT(*) AS Total_emp FROM Employees
),cte2 as(
SELECT COUNT(*) AS Total_null_emp FROM Employees WHERE salary IS NULL
)
SELECT Total_null_emp, Total_emp, CONVERT(NUMERIC(10,2),Total_null_emp*100.0)/NULLIF(Total_emp,0) AS Null_emp_percentage
FROM cte1 a
CROSS JOIN    cte2 b
---(2.) Find the second-highest salary after excluding NULL values.
SELECT TOP 1 * FROM Employees WHERE salary <(
SELECT MAX(salary) AS Highest_Salary FROM Employees WHERE salary IS NOT NULL 
)ORDER BY salary DESC
---(3.) Find employees whose department is NULL and replace it with the department of another available source column using COALESCE().
SELECT *,COALESCE(department,'IT') AS new_department FROM Employees WHERE department IS NULL
---(4.) Calculate total compensation while handling NULL values in salary.
;with cte as(
SELECT *,ISNULL(salary,0) AS new_salary FROM Employees
)
SELECT SUM(new_salary) AS Total_salary FROM cte
---(5.) Write a query to identify columns with missing values using conditional aggregation.
SELECT SUM(CASE WHEN department IS NULL THEN 1 ELSE 0	END) AS Total_missing_departments,
	   SUM(CASE WHEN salary     IS NULL THEN 1 ELSE 0	END) AS Total_missing_salary     ,
	   SUM(CASE WHEN email      IS NULL THEN 1 ELSE 0	END) AS Total_missing_email      ,
	   SUM(CASE WHEN dept_id    IS NULL THEN 1 ELSE 0	END) AS Total_missing_deptid
FROM Employees

-------------------------------------------Apply – Business-Oriented Scenarios---------------------------------------------
---1.	
/*
Business tasks:
(a.)	Identify employees with missing salary.
(b.)	Calculate total salary.
(c.)	Replace missing salary with zero.
(d.)	Calculate employee-wise total salary.
(e.)	Find the percentage of employees with missing salary.
*/
---(a.)	Identify employees with missing salary
SELECT * FROM Employees WHERE salary IS NULL
---(b.) Calculate total salary
SELECT SUM(salary) AS Total_salary FROM Employees
---(c.) Replace missing salary with zero
SELECT *,COALESCE(salary,0) as new_salary  FROM Employees
---(d.) Calculate employee-wise total salary
SELECT *,SUM(salary)OVER(PARTITION BY emp_name) as Total_salary FROM Employees
---(e.) Find the percentage of employees with missing salary
;with cte1 as(
SELECT COUNT(*) AS Total FROM Employees
),cte2 as(
SELECT COUNT(1) AS Total_null_salary FROM Employees WHERE salary IS NULL
)
SELECT *,CONVERT(DECIMAL(10,2),(Total_null_salary*100.0))/NULLIF(Total,0) as percentage
FROM cte1 a 
CROSS JOIN
cte2 b

