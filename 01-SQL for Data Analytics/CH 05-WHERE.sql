--------------------------------------------------------WHERE-------------------------------------------------------------------------------------------------------
/*
	WHERE	----------->	It helps in filtering the records from the database table based on the condition.

	Syntax:

	SELECT * FROM table_name WHERE condition;

	SELECT col1, col2 FROM table_name WHERE condition;
*/
--------------------------------------------------Five solved examples----------------------------------------------------------------------------------------------
---1.	Display all employees who belong to the IT department
SELECT * FROM Employees WHERE department IN ('IT') ORDER BY salary
---2.	Find employees whose salary is greater than ₹100,000
SELECT * FROM Employees WHERE salary > 100000 AND department IS NOT NULL
---3.	Find active employees working in IT
SELECT * FROM Employees WHERE department = 'IT' AND status = 'Active' ORDER BY salary
---4.	Find customers who live in Delhi, Mumbai, or Hyderabad
SELECT * FROM customers WHERE city IN ('Delhi','Mumbai','Hyderabad')
---5.	Find successful UPI payments
SELECT * FROM Payments1 WHERE payment_mode = 'UPI' AND payment_status = 'Success'
-------------------------------------------------Accenture Interview Questions--------------------------------------------------------------------------------------
---1.	Write a SQL query to display all customers who live in Mumbai using the Customers table
SELECT * FROM customers WHERE city = 'Mumbai'
---2.	Write a SQL query to find employees whose department is IT using the Employees table
SELECT * FROM Employees WHERE department = 'IT' ORDER BY salary
---3.	Write a SQL query to find products whose price is greater than ₹10,000 using the products table
SELECT * FROM products WHERE price > 10000 ORDER BY price
---4.	Write a SQL query to find orders where the order_amount is less than ₹1,000 using the Orders table
SELECT * FROM orders WHERE order_amount < 1000 ORDER BY order_amount
---5.	Write a SQL query to find employees whose status is Active and whose salary is greater than ₹60,000 using the Employees table
SELECT * FROM Employees WHERE status = 'Active' AND salary > 60000 ORDER BY salary

-------------------------------------------------PwC Interview Questions--------------------------------------------------------------------------------------------
---6.	Write a SQL query to find employees whose salary is between ₹50,000 and ₹80,000, including both limits
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 80000 ORDER BY salary
---7.	Write a SQL query to find customers who live in either Delhi, Pune, or Chennai using the Customers table
SELECT * FROM customers WHERE city IN ('Delhi','Pune','Chennai')
---8.	Write a SQL query to find orders whose order_amount is greater than or equal to ₹2,000 and less than ₹5,000
SELECT * FROM orders WHERE order_amount >= 2000 AND order_amount < 5000 ORDER BY order_amount
---9.	Write a SQL query to find employees whose status is not Active
SELECT * FROM Employees WHERE NOT status = 'Active' ORDER BY salary
---10.	Write a SQL query to find products belonging to the Electronics category with a price below ₹20,000
SELECT * FROM products WHERE category = 'Electronics' AND price < 20000 ORDER BY price

--------------------------------------------Deloitte — Analytical problem-solving questions-----------------------------------------------------------------------
---11.	Using Employees, find employees who work in IT, have a salary greater than ₹120,000, and have Active status
SELECT * FROM Employees WHERE department = 'IT' AND salary > 120000 AND status = 'Active' ORDER BY salary
---12.	Using Orders, find orders placed during June 2026 whose order_amount is greater than ₹1,500 and less than ₹4,000
SELECT * FROM orders WHERE order_date >= '2026-06-01' AND order_date <= '2026-06-30' AND order_amount >= 1500 and order_amount < 4000 order by order_amount
---13.	Using Payments1, find payments that are either UPI payments with Success status or Cash payments with Success status. Use only WHERE conditions to express the requirement
SELECT * FROM Payments1 WHERE (payment_mode = 'UPI' AND payment_status = 'Success') OR (payment_mode = 'Cash' AND payment_status = 'Success')
---14.	Using Employees, find employees who are not in the HR department and whose salary is at least ₹70,000
SELECT * FROM Employees WHERE NOT department = 'HR' AND salary >= 70000 ORDER BY salary
---15.	Using Orders, find orders whose order_amount is negative or exactly zero. Identify the filtering condition that captures both cases
SELECT * FROM orders WHERE order_amount <= 0 ORDER BY order_amount

-------------------------------------------E&Y	Interview Questions-----------------------------------------------------------------------------------------------
---16.	Using Employees, find employees whose department is IT or Finance and whose salary is greater than ₹100,000
SELECT * FROM Employees WHERE (department = 'IT' OR department = 'Finance') AND salary > 100000 ORDER BY salary
---17.	Using Customers, find customers whose city is not Delhi, Mumbai, or Pune
SELECT * FROM customers WHERE NOT city IN ('Delhi','Mumbai','Pune')
---18.	Using products, find products whose price is between ₹1,000 and ₹15,000 and whose category is Electronics or Furniture
SELECT * FROM products WHERE price BETWEEN 1000 AND 15000 AND category IN ('Electronics','Furniture') ORDER BY price
---19.	Using Employees, find employees whose email value is NULL
SELECT * FROM Employees WHERE email IS NULL
--20.	Using Employees, find employees whose department is IT, whose status is Active, and whose salary is not between ₹60,000 and ₹120,000
SELECT * FROM Employees WHERE department = 'IT' AND status = 'Active' AND salary NOT BETWEEN 60000 AND 120000 ORDER BY salary

----------------------------------------Amgen Interview Questions--------------------------------------------------------------------------------------------------
---21.	Using Employees, find employees whose department is Finance and whose city is Delhi
SELECT * FROM Employees WHERE department = 'Finance' AND city = 'Delhi' ORDER BY salary
---22.	Using Orders, find orders with an order_amount greater than ₹2,000 and an order_date on or after 1 July 2026
SELECT * FROM orders WHERE order_amount > 2000 and order_date >= '2026-07-01' ORDER BY order_date
---23.	Using Payments1, find all payments whose status is Pending or Failed
SELECT * FROM Payments1 WHERE payment_status IN ('Pending','Failed')
---24.	Using Employees, find employees whose salary is greater than ₹100,000, whose status is Active, and whose city is not Delhi
SELECT * FROM Employees WHERE salary > 100000 AND status = 'Active' AND NOT city = 'Delhi' ORDER BY salary
---25.	Using Orders, identify records with an order_amount below zero or above ₹5,000. Write a single WHERE condition that includes either case
SELECT * FROM orders WHERE order_amount < 0 OR order_amount > 5000 ORDER BY order_amount