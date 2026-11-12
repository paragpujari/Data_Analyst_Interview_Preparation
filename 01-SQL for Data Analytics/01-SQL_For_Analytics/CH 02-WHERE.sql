------------------------------------------------------------WHERE--------------------------------------------------------------------------------------------
/*
	WHERE ----->	It is used to filter the records based on the condition

	Syntax:--

	SELECT * FROM table WHERE condition;
*/
-----------------------------------------------------------Solved Examples-----------------------------------------------------------------------------------
---1.	Retrieve all employees who belong to the IT department
SELECT * FROM Employees WHERE department = 'IT'
---2.	Retrieve employees whose salary is greater than ₹1,00,000
SELECT * FROM Employees WHERE salary > 100000
---3.	Retrieve employees who belong to the IT department and have a salary greater than ₹1,30,000
SELECT * FROM Employees WHERE department = 'IT' AND salary > 130000
---4.	Retrieve customers who belong to Delhi, Mumbai or Bangalore
SELECT * FROM customers WHERE city IN ('Delhi','Mumbai','Bangalore')
---5.	Retrieve employees whose salary, department or email information is missing
SELECT * FROM Employees WHERE salary IS NULL OR department IS NULL OR email IS NULL

----------------------------------------------------------Coding Interview Questions-------------------------------------------------------------------------
---1.	Retrieve all employees who belong to the HR department
SELECT * FROM Employees WHERE department = 'HR'
---2.	Retrieve all products whose price is greater than ₹10,000
SELECT * FROM products WHERE price > 10000
---3.	Retrieve all orders where the order amount is less than ₹1,000
SELECT * FROM orders WHERE order_amount < 1000
---4.	Retrieve employees who belong to IT and have a salary greater than ₹1,20,000
SELECT * FROM Employees WHERE department = 'IT' AND salary > 120000
---5.	Retrieve employees who belong to either Finance or Marketing
SELECT * FROM Employees WHERE department = 'Finance' OR department = 'Marketing'
---6.   Retrieve products whose prices are between ₹1,000 and ₹10,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 10000
---7.	Retrieve all customers whose city is not Delhi, Mumbai or Pune
SELECT * FROM customers WHERE city NOT IN ('Mumbai','Delhi','Pune')
---8.	Retrieve employees whose names start with the letter 'A'
SELECT * FROM Employees WHERE emp_name LIKE 'A%'
---9.   Retrieve orders placed between 1 June 2026 and 30 June 2026, inclusive
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-06-30' ORDER BY order_date
---10.	Retrieve all payments where the payment status is either Failed or Pending, and the payment mode is not Cash
SELECT * FROM Payments1 WHERE payment_status IN ('Failed','Pending') AND payment_mode NOT IN ('Cash')

----------------------------------------------Analytical Scenario Based Questions---------------------------------------------------------------------------
---1.	
/*
	The HR department wants to identify employees eligible for a special salary review.

Eligibility criteria:
- Department must be IT.
- Salary must be greater than ₹1,30,000.
- Employee status must be Active.
Task: Write an SQL query to retrieve all eligible employees
*/

SELECT * FROM Employees WHERE department = 'IT' AND salary > 130000 AND status = 'Active'
---2.	
/*
	The sales department wants to identify high-value orders.

Conditions:
- Order amount must be greater than ₹2,000.
- Orders must have been placed during July 2026.
- Negative or zero order amounts must not qualify.
*/

SELECT * FROM orders WHERE order_amount > 2000 and order_date >= '2026-07-01' AND order_date <= '2026-07-31' AND order_amount > 0
---3.
/*
	The finance team wants to investigate unsuccessful or pending transactions.

Conditions:
- Payment status must be Failed or Pending.
- Payment mode must be UPI or Net Banking
*/
SELECT * FROM Payments1 WHERE payment_status IN ('Failed','Pending') AND payment_mode IN ('UPI','Net Banking')
---4.
/*
	The marketing department is planning a promotional campaign.

Target customers:
- Customers from Delhi, Mumbai, Bangalore or Hyderabad.
- Customers must not belong to Pune.
*/
SELECT * FROM customers WHERE city IN ('Delhi','Mumbai','Bangalore','Hyderabad') AND city <> ('Pune')
---5.
/*
	The HR analytics team wants to identify incomplete employee records.

An employee record is considered incomplete if:
- Salary is NULL, OR
- Department is NULL, OR
- Email is NULL.
Task: Retrieve all incomplete employee records.
*/
SELECT * FROM Employees WHERE (salary IS NULL) OR (department IS NULL) OR (email IS NULL)