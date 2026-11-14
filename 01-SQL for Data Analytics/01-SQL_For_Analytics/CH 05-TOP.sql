---------------------------------------------------------------------TOP--------------------------------------------------------------------------------------------------
/*
	TOP ----->	It is used to fetch the top 'n' records from the database table.

	Syntax:--

	SELECT TOP col_name FROM table_names;
*/
----------------------------------------------------------------Solved Examples-------------------------------------------------------------------------------------------
---1.	Display the top 5 highest-paid employees
SELECT TOP 5 * FROM Employees ORDER BY salary DESC
---2.	Display the top 3 lowest-paid employees
SELECT TOP 3 * FROM Employees ORDER BY salary ASC
---3.	Display the top 5 most recently hired employees
SELECT TOP 5 * FROM Employees ORDER BY Hire_Date DESC
---4.	Display the top 3 most expensive products
SELECT TOP 3 * FROM products ORDER BY price DESC
---5.	Display the top 5 customers based on customer ID
SELECT TOP 5 * FROM customers ORDER BY customer_id ASC
---------------------------------------------------------------Coding Interview Questions---------------------------------------------------------------------------------
---1.	Display the top 10 employees from the Employees table
SELECT TOP 10 * FROM Employees ORDER BY emp_id ASC
---2.	Display the top 5 employees based on highest salary
SELECT TOP 5 * FROM Employees ORDER BY salary DESC 
---3.	Display the top 3 employees based on lowest salary
SELECT TOP 3 * FROM Employees ORDER BY salary ASC
---4.	Display the top 5 most recently hired employees
SELECT TOP 5 * FROM Employees ORDER BY Hire_Date DESC
---5.	Display the top 3 oldest employees based on birth date
SELECT TOP 3 * FROM Employees ORDER BY birth_date
---6.	Display the top 5 customers based on customer ID in descending order
SELECT TOP 5 * FROM customers ORDER BY customer_id DESC
---7.	Display the top 4 most expensive products
SELECT TOP 4 * FROM products ORDER BY price DESC
---8.	Display the top 5 cheapest products
SELECT TOP 5 * FROM products ORDER BY price ASC
---9.	Display the top 5 highest-value orders
SELECT TOP 5 * FROM orders ORDER BY order_amount DESC
---10.	Display the top 3 most recent orders based on order date
SELECT TOP 3 * FROM orders ORDER BY order_date DESC
----------------------------------------------------------Analytical Scenario Based Questions---------------------------------------------------------------------------------------
---1.	An HR manager wants to identify the five highest-paid employees in the organization for a salary review.Write a SQL query using TOP.
SELECT TOP 5 * FROM Employees ORDER BY salary DESC
---2.	An e-commerce company wants to identify its three most expensive products for a premium product promotion. Write a SQL query using TOP.
SELECT TOP 3 * FROM products ORDER BY price DESC
---3.	A company wants to retrieve the first 10 customers based on customer ID for a customer database review. Write a SQL query using TOP.
SELECT TOP 10 * FROM customers ORDER BY customer_id ASC
---4.	An HR department wants to review the five employees who joined the organization most recently. Write a SQL query using TOP.
SELECT TOP 5 * FROM Employees ORDER BY Hire_Date DESC
---5.	A sales manager wants to identify the five orders with the highest order amounts to understand the company's largest transactions. Write a SQL query using TOP.
SELECT TOP 5 * FROM orders ORDER BY order_amount DESC
