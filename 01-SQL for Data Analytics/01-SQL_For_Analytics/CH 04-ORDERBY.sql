-------------------------------------------------------------ORDER BY-----------------------------------------------------------------------------------------
/*
	ORDER BY -----> It is used to arrange all the columns of the database table either in ascending or descending order.

	Syntax:--

	SELECT col1, col2,....,coln FROM table_name ORDER BY col ASC/DESC;
*/
------------------------------------------------------------Solved Examples-----------------------------------------------------------------------------------
---1.	Sort employees by salary in ascending order
SELECT * FROM Employees ORDER BY salary ASC
---2.	Sort employees by salary in descending order
SELECT * FROM Employees ORDER BY salary DESC
---3.	Sort employees by department in ascending order and salary in descending order
SELECT * FROM Employees ORDER BY department ASC, salary DESC
---4.	Sort products by price from highest to lowest
SELECT * FROM products ORDER BY price DESC
---5.	Sort orders by order date in ascending order and order amount in descending order
SELECT * FROM orders ORDER BY order_date ASC, order_amount DESC
----------------------------------------------------------Coding Interview Questions--------------------------------------------------------------------------
---1.	Display all employees sorted by employee name in ascending order.
SELECT * FROM Employees ORDER BY emp_name ASC
---2.	Display all employees sorted by hire date in descending order.
SELECT * FROM Employees ORDER BY Hire_Date DESC
---3.	Display all employees sorted by salary in descending order.
SELECT * FROM Employees ORDER BY salary DESC
---4.	Display all employees sorted by city in ascending order.
SELECT * FROM Employees ORDER BY city ASC
---5.	Display all employees sorted by department in ascending order and employee name in ascending order.
SELECT * FROM Employees ORDER BY department ASC, emp_name ASC
---6.	Display all employees sorted by salary in descending order and hire date in ascending order.
SELECT * FROM Employees ORDER BY salary DESC, Hire_Date ASC
---7.	Display all orders sorted by order amount in ascending order.
SELECT * FROM orders ORDER BY order_amount ASC
---8.	Display all orders sorted by customer ID in ascending order and order amount in descending order.
SELECT * FROM orders ORDER BY customer_id ASC, order_amount DESC
---9.	Display all products sorted by category in ascending order and price in descending order.
SELECT * FROM products ORDER BY category ASC, price DESC
---10.	Display all payment records sorted by payment status in ascending order and payment ID in descending order.
SELECT * FROM Payments1 ORDER BY payment_status ASC, payment_id DESC
-------------------------------------------------------Analytical Scenario Based Questions---------------------------------------------------------------------
---1.	The HR team wants to review employee compensation. Write a SQL query to display all employees with the highest-paid employees appearing first. If two employees have the same salary, arrange them alphabetically by employee name.
SELECT * FROM Employees ORDER BY salary DESC, emp_name ASC
---2.	The HR department wants to review recent recruitment activity. Write a SQL query to display all employees hired most recently first. If multiple employees joined on the same date, arrange them by employee ID in ascending order.
SELECT * FROM Employees ORDER BY Hire_Date DESC, emp_id ASC
---3.	The sales team wants to review order transactions based on their value. Write a SQL query to display all orders with the highest order amounts first. If two orders have the same amount, display the latest order first.
SELECT * FROM orders ORDER BY order_amount DESC,order_date DESC
---4.	The product management team wants to compare product prices category-wise. Write a SQL query to arrange products alphabetically by category. Within each category, display the most expensive products first.
SELECT * FROM products ORDER BY category ASC,price DESC
---5.	The finance team wants to review payment records. Write a SQL query to arrange payments alphabetically by payment status. Within each payment status, display the latest payment ID first.
SELECT * FROM Payments1 ORDER BY payment_status ASC, payment_id DESC