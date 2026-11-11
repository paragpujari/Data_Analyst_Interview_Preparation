------------------------------------------------------SELECT--------------------------------------------------------------------------------------------------------
/*
	SELECT ----->	It helps in fetching records from the database table.

	Syntax:---

	SELECT col1, col2,...,col2 FROM table_name;
*/
------------------------------------------------------Solved Examples-----------------------------------------------------------------------------------------------
---1.	Display all columns and records from the Employees table
SELECT * FROM Employees
---2.	Display employee names, departments, and salaries
SELECT emp_name,department,salary FROM Employees
---3.	Display all unique department names from the Employees table
SELECT DISTINCT department AS Unique_departments FROM Employees
---4.	Display employee names and salaries using the column aliases Employee_Name and Monthly_Salary
SELECT emp_name AS Employee_Name, salary AS Monthly_Salary FROM Employees
---5.	Display employee names, current salaries, and salaries after a 10% increment
SELECT emp_name,salary,(salary*1.10) as Increment_new_salary FROM Employees

------------------------------------------------------Coding Interview Questions------------------------------------------------------------------------------------
---1.	Display all employee names and their corresponding email addresses from the Employees table
SELECT emp_name,email FROM Employees
---2.	Display all unique cities from the Employees table
SELECT DISTINCT city AS Unique_city FROM Employees
---3.	Display employee ID, employee name, department, and salary
SELECT emp_id,emp_name,department,salary FROM Employees
---4.	Display the following columns from the Orders table(order id, customer id, order amount). display the order amount after adding ₹100 to each order amount
SELECT order_id,customer_id,order_amount,(order_amount+100) as updated_order_amount FROM orders
---5.	Display all employees whose salary is greater than ₹1,00,000
SELECT emp_id, emp_name,salary FROM Employees WHERE salary > 100000
---6.	Display employees who belong to either IT or HR departments and show their names, departments, and salaries
SELECT emp_name,department,salary FROM Employees WHERE department IN ('IT','HR')
---7.	Display employees whose salary is between ₹50,000 and ₹1,00,000
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 100000 ORDER BY salary
---8.	Display all orders placed during June 2026
SELECT order_id,customer_id,order_date,order_amount FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-06-30' ORDER BY order_date
---9.	Display employee names, departments, and salaries in descending order of salary
SELECT emp_name,department,salary FROM Employees ORDER BY salary DESC
---10.	Display the top 5 highest-paid employees from the Employees table
SELECT emp_name,department,salary FROM Employees ORDER BY salary DESC

----------------------------------------------Analytical Scenario Based Questions----------------------------------------------------------------------------------
---1.	An HR department wants to identify employees who earn more than ₹1,20,000.The HR team also wants to display their employee names, departments, and salaries.
SELECT emp_name,department,salary FROM Employees WHERE salary > 120000 ORDER BY salary
SELECT COUNT(emp_name) AS Total_employees  FROM Employees WHERE salary > 120000 
SELECT TOP 1 *  FROM Employees WHERE salary > 120000  ORDER BY salary DESC

---2.	An e-commerce company wants to examine orders placed by customer Alice (customer_id = 101). The business team wants to display all her orders, including order IDs, order dates, and order amounts.
SELECT order_id,order_date,order_amount FROM orders WHERE customer_id = '101'
SELECT COUNT(order_id) AS Total_orders FROM orders WHERE customer_id = '101'
;with cte as(
SELECT order_id,order_date,order_amount FROM orders WHERE customer_id = '101'
)
SELECT top 1 order_id FROM cte ORDER BY order_amount DESC
SELECT order_id FROM orders WHERE order_amount < 0

---3. The HR department wants to retrieve employees belonging to the IT department. The report should display employee IDs, employee names, salaries, and cities.
SELECT emp_id,emp_name,salary,city FROM Employees WHERE department = 'IT'
SELECT COUNT(emp_id) AS Total_IT_Employees FROM Employees WHERE department = 'IT'
SELECT TOP 1  emp_id,emp_name,salary,city FROM Employees WHERE department = 'IT' ORDER BY salary desc
SELECT DISTINCT city AS Unique_cities FROM Employees WHERE department = 'IT'

---4.	A finance team wants to examine payment transactions from the Payments1 table.They want to retrieve payment IDs, order IDs, payment modes, and payment statuses for all transactions.
SELECT payment_id,order_id,payment_mode,payment_status FROM Payments1
SELECT COUNT(payment_id) AS Total_payment_transactions FROM Payments1
SELECT * FROM Payments1 WHERE payment_status = 'Pending'
SELECT * FROM Payments1 WHERE payment_status = 'Failed'
SELECT DISTINCT payment_mode AS Total_payment_modes FROM Payments1

---5.	An e-commerce company wants to prepare a product price report. The report should display product names, categories, original prices, and prices after a 15% discount.
SELECT product_name,category,price as original_price,(price*0.85) as price_after_discount FROM products
;with cte as(
SELECT product_name,category,price as original_price,(price*0.85) as price_after_discount FROM products
)
SELECT TOP 1 product_name AS products FROM cte ORDER BY original_price DESC
;with cte as(
SELECT product_name,category,price as original_price,(price*0.85) as price_after_discount FROM products
)
SELECT TOP 1 product_name AS products FROM cte ORDER BY original_price
SELECT *,(price*0.15) as discounted_price  FROM products WHERE product_name = 'Laptop'
SELECT product_name,category,price as original_price,(price*0.85) as price_after_discount FROM products ORDER BY price DESC