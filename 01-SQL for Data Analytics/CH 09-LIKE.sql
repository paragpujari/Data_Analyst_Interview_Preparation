-------------------------------------------------------LIKE----------------------------------------------------------------------------------------------
/*
	LIKE -----> It helps in filtering the records from the tables based on certain patterns.


	Understanding LIKE patterns
		Pattern	               Meaning

		'A%'	               Starts with A
		'%A'	               Ends with A
		'%A%'	               Contains A anywhere
		'A___'	               Starts with A, followed by exactly 3 characters
		'___a'	               Ends with a, with exactly 3 characters before it
		'A%B'	               Starts with A and ends with B
		'%IT%'	               Contains IT anywhere
		'_____ '	           Five characters followed by a space
*/
-------------------------------------------------Basic Examples-----------------------------------------------------------------------------------------
---1.	Find customers whose names start with A
SELECT * FROM customers WHERE customer_name LIKE 'A%'
---2.	Find customers whose names end with a
SELECT * FROM customers WHERE customer_name LIKE '%a'
---3.	Find customers whose names contain the letter o
SELECT * FROM customers WHERE customer_name LIKE '%o%'
---4.	Find employees whose names start with R
SELECT * FROM Employees WHERE emp_name LIKE 'R%' ORDER BY emp_id
---5.	Find products whose names contain the word Phone
SELECT * FROM products WHERE product_name LIKE '%Phone%'

------------------------------------------------Advanced SQL Scenario Based Questions-------------------------------------------------------------------
---1.	A company wants to identify customers whose names start with either A or V
SELECT * FROM customers WHERE customer_name LIKE 'A%' OR customer_name LIKE 'V%'
---2.	The HR department wants to identify employees whose email addresses end with example.com
SELECT * FROM Employees WHERE email LIKE '%example.com'
---3.	An e-commerce company wants to identify products containing the word Book
SELECT * FROM products WHERE product_name LIKE '%Book%'
---4.	HR wants to identify employees whose department names contain the letter a
SELECT * FROM Employees WHERE department LIKE '%a%'
---5.	The finance team wants to identify payment records where the payment mode contains the word Card
SELECT * FROM Payments1 WHERE payment_mode LIKE '%Card%'

----------------------------------------------Company Based Questions-----------------------------------------------------------------------------------
---1.	Write an SQL query to retrieve all customers whose names start with the letter A
SELECT * FROM customers WHERE customer_name LIKE 'A%'
---2.	Write an SQL query to retrieve products whose names contain exactly 5 characters
SELECT * FROM products WHERE product_name LIKE '_____'
---3.	
/*
A company wants to identify employees whose email addresses:
- Start with the employee's first name.
- End with example.com
*/
SELECT * FROM Employees WHERE email LIKE CONCAT(emp_name,'%') AND email LIKE '%example.com'
---4.
/*
The HR department wants to identify employees whose names:
- Start with either A or S.
- Have the letter a anywhere in their names
*/

SELECT * FROM Employees WHERE (emp_name LIKE 'A%' OR emp_name LIKE 'S%') AND (emp_name LIKE '%a%')
---5. 
/*
The HR department wants to identify employees whose names:
- Start with a consonant.
- Have the letter a as the second character.
*/
;with cte as(
SELECT * FROM Employees WHERE emp_name NOT LIKE '[aeiou]%'
)
SELECT * FROM cte WHERE emp_name LIKE '_a%'
---6.
/*
An e-commerce company wants to identify products whose names:
- Start with a character between A and Z.
- Have the letter o as the third character.
- End with the letter e.
*/
;with cte as(
SELECT * FROM products WHERE product_name LIKE '[A-Z]%'
),cte1 as(
SELECT * FROM cte WHERE product_name LIKE '__o%'
)
SELECT * FROM cte1 WHERE product_name LIKE '%e'

---7. 
/*
Write an SQL query to retrieve customers whose city names:
- Start with B.
- Contain exactly 10 characters.
*/
;with cte as(
SELECT * FROM customers WHERE city LIKE 'B%'
)
SELECT * FROM cte WHERE LEN(city) = 10

---8.
/*
The HR department wants to identify employees whose email addresses:
- Start with any three characters.
- Have a dot (.) as the fourth character.
- Contain the text example.com at the end.
*/

SELECT * FROM Employees WHERE email LIKE '___.%example.com'

---9.
/*
The finance department wants to retrieve payment records where the payment mode:
- Contains the word Banking.
- Does not start with the letter C
*/
;with cte as(
SELECT * FROM Payments1 WHERE payment_mode LIKE '%Banking%'
)
SELECT * FROM cte WHERE payment_mode NOT LIKE 'C%'
---10. The HR team wants to retrieve employees whose email addresses do not contain the text example
SELECT * FROM Employees WHERE email NOT LIKE '%example%'