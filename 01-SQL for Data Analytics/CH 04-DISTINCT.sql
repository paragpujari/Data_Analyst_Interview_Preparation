-------------------------------------------------------DISTINCT---------------------------------------------------------------------------------------------------------
/*
	DISTINCT	------------->	It helps in selecting the unique records from the database table.

	Syntax:

	SELECT DISTINCT col_names FROM table_name;
*/
--------------------------------------------------------Examples---------------------------------------------------------------------------------------------------------
---1.	Display unique customer cities
SELECT DISTINCT city AS Unique_city FROM customers
---2.	Display unique employee departments
SELECT DISTINCT department AS Unique_departments FROM Employees WHERE department IS NOT NULL
---3.	Display unique product categories
SELECT DISTINCT category AS Unique_category FROM products
---4.	Display unique employee city and department combinations
SELECT DISTINCT city, department FROM Employees
---5.	Display unique payment modes and statuses
SELECT DISTINCT payment_mode, payment_status FROM Payments1

--------------------------------------------------------Accenture Interview Questions------------------------------------------------------------------------------------
---1.	What is the purpose of the SQL DISTINCT statement?
---Observations:	It helps in selecting all the unique records from the database table.
---2.	Write a query to display unique cities from the Customers table
SELECT DISTINCT city AS Unique_city FROM customers
---3.	Write a query to display unique departments from the Employees table
SELECT DISTINCT department AS Unique_department FROM Employees WHERE department IS NOT NULL
---4.	Write a query to display unique product categories from the products table
SELECT DISTINCT category AS Product_category FROM products
---5.	Write a query to display unique combinations of city and department from the Employees table
SELECT DISTINCT city, department FROM Employees

--------------------------------------------------------PwC Interview Questions-------------------------------------------------------------------------------------------
---6.	What is the difference between the output of SELECT city FROM Customers and SELECT DISTINCT city FROM Customers?
SELECT city FROM customers				---- It selects all the cities from the customers table including the duplicates
SELECT DISTINCT city FROM  customers    ---- It selects only the unique cities from the customers table

---7.	Write a query to retrieve unique payment modes from the Payments1 table
SELECT DISTINCT payment_mode AS Unique_payment_mode FROM Payments1

---8.	Write a query to retrieve unique payment statuses from the Payments1 table.
SELECT DISTINCT payment_status AS Unique_payment_status FROM Payments1

---9.	Write a query to display unique combinations of payment_mode and payment_status
SELECT DISTINCT payment_mode, payment_status FROM Payments1

---10.	Write a query to display unique combinations of category and price from the products table
SELECT DISTINCT category, price FROM products

----------------------------------------------------Deloitte — 5 analytical problem-solving questions---------------------------------------------------------------------
---11.	The Customers table contains multiple customers from the same city. Write a query to list every city exactly once using DISTINCT
SELECT DISTINCT city AS Unique_city FROM customers
---12.	The Employees table contains employees belonging to the same department in different cities. Write a query to identify every unique city-department combination.
SELECT DISTINCT city, department FROM Employees
---13. The Payments1 table contains repeated payment modes across different statuses. Write a query to return unique payment mode-status combinations
SELECT DISTINCT payment_mode, payment_status FROM Payments1
---14.	Write a query to identify all unique combinations of department, salary, and city from the Employees table
SELECT DISTINCT department,salary,city FROM Employees
---15.	Write a query using SELECT DISTINCT * on the Employees table. Explain what makes two complete rows duplicates for this operation.
SELECT DISTINCT * FROM Employees
/*
Observations:	SELECT DISTINCT * on the Employees table --------->  It means returning unique rows from the employees table.

				two complete rows duplicates for this operation only when each value in each of the column is the same.
*/

----------------------------------------------------EY — 5 questions-----------------------------------------------------------------------------------------------------
---16.	How does DISTINCT handle repeated values in a single column?
/*
	DISTINCT returns the unique value in a single column. It just filters out the duplicte records in the column of the table
*/

SELECT DISTINCT emp_name AS Unique_Names FROM Employees	----------->	Get the unique names in the Employee table

---17.	Write a query to display unique customer names from the Customers table
SELECT DISTINCT customer_name AS Unique_customer_names FROM customers

---18.	Write a query to display unique employee statuses from the Employees table
SELECT DISTINCT status AS Unique_employee_status FROM Employees

---19.	Write a query to display unique combinations of product categories and product names
SELECT DISTINCT category, product_name FROM products

---20.	Write a query to return unique combinations of employee department, city, and status
SELECT DISTINCT department,city, status FROM Employees

---------------------------------------------------Amgen Interview Questions---------------------------------------------------------------------------------------------
---21.	Write a query to return unique cities from the Customers table
SELECT DISTINCT city AS Unique_city FROM customers

---22.	Write a query to return unique departments from the Employees table, considering the presence of NULL values
SELECT DISTINCT department AS Unique_department FROM Employees

---23.	Write a query to return unique combinations of department and status from the Employees table
SELECT DISTINCT department, status FROM Employees

---24.	Write a query to return unique combinations of payment_mode and payment_status from the Payments1 table
SELECT DISTINCT payment_mode, payment_status FROM Payments1

---25.	Write a query to return unique combinations of category and price from the products table and explain how DISTINCT evaluates the combinations
SELECT DISTINCT category, price FROM products
/*
	DISTINCT --------->	It returns the unique records from the Employee table
*/