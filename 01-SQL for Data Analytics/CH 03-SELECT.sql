----------------------------------------------------------SELECT------------------------------------------------------------------------------------------------------------------
/*
	SELECT statements is used to fetch the records or the data from the database table.

	Syntax:---

	(a.)	To fetch all the records from the table

			SELECT * FROM table_name;

	(b.)	To fetch the records of col1, col2 from the table

			SELECT col1,col2 FROM table_name;
*/
----------------------------------------------------------Examples-----------------------------------------------------------------------------------------------------------------
---1.	Display all customer details
SELECT * FROM customers
---2.	Display employee names and salaries
SELECT emp_name,salary FROM Employees
---3.	Display product names and prices
SELECT product_name,price FROM products
---4.	Calculate the total order amount
SELECT SUM(order_amount) AS Total_order_amount FROM orders
---5.	Display employee names with their department id
SELECT emp_name,department,dept_id FROM Employees
---6.   Update the dept_id of Anamika to 101
UPDATE x
SET    x.dept_id = '101'
FROM   Employees x
WHERE  x.emp_name = 'Anamika'
----7.   Display all the details of Employees
SELECT * FROM Employees
----8.  Display payment mode and status of Payments
SELECT payment_mode, payment_status FROM Payments1
---9.	Display the  name and city of customer table
SELECT customer_name,city FROM customers
---10.	Display the details of department table
SELECT * FROM Departments

-------------------------------------------------------Accenture Interview Questions---------------------------------------------------------------------------------------
---1.	Write a query to display all columns from the Customers table
SELECT * FROM customers
---2.	Display only customer_name and city from the Customers table
SELECT customer_name,city FROM customers
---3.	Display product_name, category, and price from the Products table
SELECT product_name,category,price FROM products
---4.	Display each product's name and price with a calculated price after adding ₹500
SELECT product_name,price,(price+500) as calculated_price FROM products
---5.	Display employee names and salaries using the output column headings Employee_Name and Monthly_Salary
SELECT emp_name AS Employee_Name, salary AS Monthly_Salary FROM Employees

------------------------------------------------------PwC Interview Questions----------------------------------------------------------------------------------------------
---6.	Display order_id, customer_id, and order_amount from the Orders table
SELECT order_id,customer_id,order_amount FROM orders
---7.	Display employee names, hire dates, and birth dates from the Employees table
SELECT emp_name, Hire_Date, birth_date FROM Employees
---8.	Display each employee's name, salary, and annual salary calculated from the monthly salary
SELECT emp_name,salary,(salary*12) as annual_salary FROM Employees
---9.	Calculate the total, average, minimum, and maximum product prices from the Products table
SELECT SUM(price) AS Total_price, AVG(price) AS Average_price, MIN(price) as Minimum_price, MAX(price) as Maximum_price FROM products
---10.	Display employee names and salaries in descending order of salary
SELECT emp_name,salary FROM Employees ORDER BY salary DESC

------------------------------------------------------Deloitte Interview — Analytical Problem-Solving Questions------------------------------------------------------------
---11.	Display each department ID and the number of employees associated with it using the Employees table
SELECT dept_id,COUNT(1) AS Total_employees FROM Employees WHERE dept_id IS NOT NULL GROUP BY dept_id
---12.	Display each department's average salary, maximum salary, and minimum salary
SELECT dept_id,AVG(salary) AS Average_salary, MAX(salary) AS Maximum_salary, MIN(salary) AS Minimum_salary FROM Employees WHERE dept_id IS NOT NULL GROUP BY dept_id
---13.	Display each customer's ID and the total order amount associated with that customer
SELECT customer_id, SUM(order_amount) AS Total_order_amount FROM orders GROUP BY customer_id
---14.	Rank employees by salary from highest to lowest using a suitable SQL window function
SELECT *,DENSE_RANK()OVER(ORDER BY salary DESC) AS ranks FROM Employees ORDER BY salary desc
---15.	Display each employee's salary alongside the average salary of their department using a window function
SELECT emp_name,department,salary,AVG(salary)OVER(PARTITION BY department) AS Average_salary FROM Employees 

------------------------------------------------------EY Interview Questions-----------------------------------------------------------------------------------------------
---16.	Display the department names and department IDs from the Departments table
SELECT dept_id, dept_name FROM Departments
---17.	Display employee names, salaries, and department id using the Employees  table
SELECT emp_name,salary,dept_id FROM Employees
---18.	Display each product category and its average product price
SELECT category,AVG(price) AS Average_product_price FROM products GROUP BY category
---19.	Display each customer ID, their number of orders, and their average order amount
SELECT customer_id,COUNT(1) AS Total_orders,AVG(order_amount) AS Average_order_amount FROM orders GROUP BY customer_id
---20.	Display customer names, cities, and total order amounts, including customers who have not placed any orders
SELECT c.customer_name, c.city, SUM(o.order_amount) AS Total_order_amount
FROM customers c
LEFT JOIN     orders    o
ON            c.customer_id = o.customer_id
GROUP BY c.customer_name, c.city
ORDER BY 3 DESC

-------------------------------------------------------Amgen Interview Questions-------------------------------------------------------------------------------------------
---21.	Display employee IDs, names, departments, hire dates, and salaries from the Employees table
SELECT emp_id,emp_name,department,Hire_Date,salary FROM Employees
---22.	Display employee names and their hire dates, ordered from the earliest hire date to the latest
SELECT emp_name,Hire_Date FROM Employees ORDER BY Hire_Date
---23.	Display employee names alongside their email addresses and department IDs, preserving the original values as stored
SELECT emp_name,email,dept_id FROM Employees
---24.	Display payment modes and the number of payment records associated with each mode using the Payments1 table
SELECT payment_mode,COUNT(1) AS Total_payments_records FROM Payments1 GROUP BY payment_mode ORDER BY 2 DESC
---25.	Display customer names, order IDs, order amounts, payment modes, and payment statuses by combining the Customers, Orders, and Payments1 tables
SELECT c.customer_name, o.order_id, o.order_amount,p.payment_mode,p.payment_status
FROM customers c
LEFT JOIN	orders o     ON c.customer_id = o.customer_id
LEFT JOIN   Payments1 p  ON o.order_id    = p.order_id