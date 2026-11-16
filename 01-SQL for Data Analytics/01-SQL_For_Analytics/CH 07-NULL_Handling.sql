---------------------------------------------------------NULL Handling--------------------------------------------------------------------------------------------------
/*
	NULL Handling refers to the condition of handling all the missing or unknown values.


	Functions:--

	ISNULL()	-------->	It replaces the NULL value with another value.

	COALESCE()  -------->	It replaces the NULL values with the first NON NULL Value.

	NULLIF()	-------->	It returns NULL if both the expressions are true.
*/
---------------------------------------------------------Five Solved Exzamples------------------------------------------------------------------------------------------
---1.	Write a query to retrieve employees whose department information is missing
SELECT * FROM Employees WHERE department IS NULL
---2.	Display employee name and salary. If salary is NULL, display 0
SELECT emp_name,salary,ISNULL(salary,0) as new_salary FROM Employees
---3.	Display employee names and email addresses. If email is NULL, display 'Email Not Available'
SELECT emp_name,email,COALESCE(email,'Email Not Available') as new_email_address FROM Employees
---4.	Display employee name and department ID. If department ID is NULL, display 999
SELECT emp_name,dept_id,ISNULL(dept_id,999) as new_dept_id FROM Employees
---5.	Write a query to calculate salary divided by department ID while avoiding division by zero
SELECT salary,dept_id,(COALESCE(salary,10000)),NULLIF(dept_id,0),(COALESCE(salary,10000))/NULLIF(dept_id,0) AS new_id FROM Employees

----------------------------------------------------------Coding Interview Questions---------------------------------------------------------------------------------------
---1.	Write a query to retrieve all employees whose salary is NULL
SELECT * FROM Employees WHERE salary IS NULL
---2.	Write a query to retrieve employees whose email address is NOT NULL
SELECT * FROM Employees WHERE email IS NOT NULL
---3.	Display employee name, department and salary. Replace NULL department with 'Not Assigned' and NULL salary with 0
SELECT emp_name,department,salary,ISNULL(department,'Not Assigned') as new_department, ISNULL(salary,0) as new_salary FROM Employees
---4.	Display all employee names and email addresses. Replace NULL email addresses with 'No Email Provided'
SELECT emp_name,email,ISNULL(email,'No Email Provided') as new_email FROM Employees
---5.	
/*
Using the Employees table, display employee name and salary. If salary is NULL, use the following default values:
1. First preference: salary
2. Second preference: 50000
3. Final preference: 0
*/
SELECT emp_name,salary,COALESCE(salary,salary,50000,0) as new_salary FROM Employees
---6.	Display employee name, department ID and email. Replace NULL department ID with 999 and NULL email with 'Missing Email'
SELECT emp_name,dept_id,email,ISNULL(dept_id,999) as new_dept_id,ISNULL(email,'Missing Email') as new_email FROM Employees
---7.   Write a query using NULLIF() to convert salary values of 0 into NULL while displaying all employee records
SELECT salary,NULLIF(salary,0) as new_salary FROM Employees
---8.	
/*
Write a query to display employee name and salary status:
- If salary is NULL → 'Salary Missing'
- If salary is NOT NULL → 'Salary Available'
*/
SELECT emp_name, salary, CASE WHEN salary IS NULL THEN 'Salary Missing'
												  ELSE 'Salary Available'
												  END AS salary_status
						 FROM Employees
---9. 
/*
Using the Employees table, display:
- Employee name
- Department
- Salary
- Email
Use COALESCE() to replace NULL values with:
- Department → 'Unassigned'
- Salary → 0
- Email → 'Not Available'
*/

SELECT emp_name,department,COALESCE(department,'Unassigned') as new_department,salary,COALESCE(salary,0) as new_salary, email, COALESCE(email,'Not Available') as new_email FROM Employees

---10. Using the Orders table, write a query to display order ID and order amount.If order amount is NULL, treat it as 0 before performing the calculation
SELECT order_id, order_amount ,ISNULL(order_amount,0) as new_order_amount FROM orders

-------------------------------------------------------------------Analytical Based Interview Questions----------------------------------------------------------------------------------------------------

---1.	
/*
The HR department identifies that some employees have missing salary, department and email information.

Using the Employees table:
1. Identify employees with missing salary.
2. Identify employees with missing department.
3. Identify employees with missing email.
4. Display employee name and replace all missing values with appropriate default values.
*/

--Identify employees with missing salary
SELECT * FROM Employees WHERE salary IS NULL
--Identify employees with missing department
SELECT * FROM Employees WHERE department IS NULL
--Identify employees with missing email
SELECT * FROM Employees WHERE email IS NULL
--Display employee name and replace all missing values with appropriate default values
SELECT 
emp_name			                                            ,
department			                                            ,
ISNULL(department,'Department Missing') as new_department		,
salary															,
ISNULL(salary,0) as new_salary									,
email															,
ISNULL(email,'Email Missing') as new_email 
FROM Employees 

---2.
/*
The company has a customer database where some customer records may have missing city information.

Using the Customers table:
1. Identify customers whose city is NULL.
2. Display customer name and city.
3. Replace missing city values with 'City Not Available'.
*/
--Identify customers whose city is NULL
SELECT * FROM customers WHERE city IS NULL
--Display customer name and city
SELECT customer_name,city FROM customers
--Replace missing city values with 'City Not Available'
SELECT customer_name,city,ISNULL(city,'City Not Available') as new_city FROM customers

---3.
/*
The finance team wants to calculate order amounts. However, some orders may have NULL order amounts.

Using the Orders table:
1. Identify orders with NULL order amounts.
2. Display order ID and order amount.
3. Replace NULL order amounts with 0.
4. Ensure missing amounts do not produce NULL results in calculations.
5. How would you handle NULL values before performing calculations?
*/

SELECT * FROM orders WHERE order_amount IS NULL
SELECT order_id,order_amount FROM orders 
SELECT order_amount,ISNULL(order_amount,0) as new_order_amount FROM orders 
SELECT order_amount,ISNULL(order_amount,0) as new_order_amount FROM orders 
--- How would you handle NULL values before performing calculations? Ans: By using ISNULL/COALESCE function, we can handle the NULL values

---4.
/*
The payment department wants to identify incomplete payment records.

Using the Payments1 table:
1. Identify records where payment mode is NULL.
2. Identify records where payment status is NULL.
3. Display payment ID, payment mode and payment status.
4. Replace missing payment mode with 'Unknown'.
5. Replace missing payment status with 'Not Updated'.
Question: Which NULL-handling functions would you use?
*/

--Identify records where payment mode is NULL
SELECT * FROM Payments1 WHERE payment_mode IS NULL
--Identify records where payment status is NULL
SELECT * FROM Payments1 WHERE payment_status IS NULL
--Display payment ID, payment mode and payment status
SELECT payment_id, payment_mode, payment_status FROM Payments1
--Replace missing payment mode with 'Unknown'
SELECT payment_mode,ISNULL(payment_mode,'Unknown') as new_payment_mode FROM Payments1
--Replace missing payment status with 'Not Updated'
SELECT payment_status,COALESCE(payment_status,'Not Updated') as new_payment_status FROM Payments1
--Which NULL-handling functions would you use? Ans COALESCE ----> It considers the first non null value from the list of expressions.

---5. 
/*
The HR department wants to validate employee salary information.

Using the Employees table:
1. Identify employees with NULL salary.
2. Convert salary 0 into NULL using NULLIF().
3. Display employee name and salary availability.
4. Replace NULL salary with 50000 using COALESCE().
5. Display a salary status of 'Missing' or 'Available'.
Question: How would you combine NULLIF(), COALESCE() and CASE WHEN to solve this problem?
*/
--Identify employees with NULL salary
SELECT * FROM Employees WHERE salary IS NULL
--Convert salary 0 into NULL using NULLIF()
SELECT emp_name,salary,NULLIF(salary,0) as new_salary FROM Employees
--Display employee name and salary availability
SELECT emp_name, salary,CASE WHEN NULLIF(salary,0) IS NULL THEN 'Salary is Missing'
													ELSE 'Salary is Available'
													END  AS Salary_Availability
													FROM Employees
--Replace NULL salary with 50000 using COALESCE()
SELECT emp_name,salary,COALESCE(salary,50000) as new_salary FROM Employees
--Display a salary status of 'Missing' or 'Available'
SELECT emp_name, salary,CASE WHEN NULLIF(salary,0) IS NULL THEN 'Missing'
													ELSE 'Available'
													END  AS Salary_Status
													FROM Employees
--How would you combine NULLIF(), COALESCE() and CASE WHEN to solve this problem
SELECT
    emp_name,

    NULLIF(salary, 0) AS updated_salary,

    CASE
        WHEN NULLIF(salary, 0) IS NULL
        THEN 'Missing'
        ELSE 'Available'
    END AS salary_status,

    COALESCE(NULLIF(salary, 0), 50000) AS final_salary

FROM Employees;