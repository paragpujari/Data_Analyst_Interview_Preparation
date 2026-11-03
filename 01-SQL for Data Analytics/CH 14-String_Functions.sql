-------------------------------------------------------String Functions--------------------------------------------------------------------------------------------------
/*
	String Functions ---------> These are the functions that deals with string.

	Function	        Purpose	                                    Example
    UPPER()	          Converts text to uppercase	            UPPER('sql') → SQL
    LOWER()	          Converts text to lowercase	            LOWER('SQL') → sql
    LEN()	          Returns number of characters (SQL Server)	LEN('Parag') → 5
    LTRIM()	          Removes leading spaces	                LTRIM(' SQL') → SQL
    RTRIM()	          Removes trailing spaces	                RTRIM('SQL ') → SQL
    TRIM()	          Removes leading and trailing spaces	    TRIM(' SQL ') → SQL
    SUBSTRING()	      Extracts part of a string	                SUBSTRING('DATABASE',1,4) → DATA
    LEFT()	          Extracts characters from the left     	LEFT('PYTHON',2) → PY
    RIGHT()	          Extracts characters from the right	    RIGHT('PYTHON',3) → HON
    REPLACE()	      Replaces specified text	                REPLACE('SQL SERVER','SERVER','DB') → SQL DB
    CHARINDEX()	      Finds position of a substring	            CHARINDEX('A','DATABASE') → 2
    CONCAT()	      Combines strings	                        CONCAT('Data',' Engineer')
*/
----------------------------------------------------------Examples---------------------------------------------------------------------------------------------------------
---1.	Convert all employee names into uppercase
SELECT UPPER(emp_name) AS Employee_Names FROM Employees ORDER BY 1
---2.   Display employee names in lowercase
SELECT LOWER(emp_name) AS Employee_Names FROM Employees ORDER BY 1
---3.   Extract the first three characters of each employee name
SELECT emp_name, LEFT(emp_name,3) as new_emp_names FROM Employees ORDER BY 1
---4.   Replace Gmail domain with company domain
SELECT email,REPLACE(email,'gmail','company') as new_email FROM Employees ORDER BY 1
---5.   Extract employee's first name from Email
SELECT emp_name,email,SUBSTRING(email,1,CHARINDEX('.',email)-1) as first_name FROM Employees WHERE email IS NOT NULL ORDER BY 1,2

--------------------------------------------------------Basic Level Interview Questions-------------------------------------------------------------------------------------
---1.   Convert customer names to uppercase
SELECT customer_name, UPPER(customer_name) AS Upper_customer_names FROM customers ORDER BY 1,2
---2.   Convert employee names to lowercase
SELECT emp_name, LOWER(emp_name) AS Lower_employee_names FROM Employees ORDER BY 1,2
---3.   Find the length of product names
SELECT product_name,LEN(product_name) AS Length_product_names FROM products ORDER BY 1,2
---4.   Extract the first three characters of customer names
SELECT customer_name,LEFT(customer_name,3) as new_customer_names FROM customers ORDER BY 1,2
---5.   Extract the last three characters of product names
SELECT product_name, RIGHT(product_name,3) AS new_product_names FROM products ORDER BY 1,2

----------------------------------------------------------Intermediate Level Interview Questions--------------------------------------------------------------
---6.   Display employee names and departments in this format: Amit works in IT
SELECT (emp_name +' '+ 'works in' +' '+ department) AS New_text FROM Employees WHERE department IS NOT NULL
---7.   Display each customer city and its first five characters
SELECT city, LEFT(city,5) AS new_city FROM customers ORDER BY 1,2
---8.   Convert product names such as Water Bottle into Water_Bottle
SELECT product_name,REPLACE(product_name,' ','_') as new_product FROM products ORDER BY 1,2
---9.   Remove leading and trailing spaces from the text '  Data Analyst  '
SELECT TRIM('  Data Analyst  ') AS New_text
---10.  Extract the part before @ from the email address of employees
SELECT email,SUBSTRING(email,1,CHARINDEX('@',email)-1) as new_email FROM Employees ORDER BY 1,2

---------------------------------------------------------Analytical Based Interview Questions---------------------------------------------------------------
---11.  Convert customer names into uppercase and display the result
SELECT customer_name,UPPER(customer_name) AS new_customer_names FROM customers ORDER BY 1,2
---12.  Display the first four characters of each employee name in uppercase
SELECT emp_name,LEFT(UPPER(emp_name),4) AS new_empnames FROM Employees ORDER BY 1,2
---13.  Extract the username from each employee email address
SELECT email,SUBSTRING(email,1,CHARINDEX('@',email)-1) as new_email FROM Employees WHERE email IS NOT NULL ORDER BY 1,2 
---14.  Replace example.com with company.com in employee email addresses
SELECT email,REPLACE(email,'example.com','company.com') AS new_email FROM Employees WHERE email IS NOT NULL ORDER BY 1,
---15.  Create a product code by combining the first three uppercase characters of the product name with the last two characters of its name
SELECT product_name, CONCAT(LEFT(UPPER(product_name),3),'',RIGHT(UPPER(product_name),2)) AS Product_code  FROM products ORDER BY 1,2
---16.  Display each customer name in reverse order
SELECT customer_name, REVERSE(customer_name) as reserved_name FROM customers ORDER BY 1,2
---17. Display each customer city and the position of the letter a in it
SELECT city,CHARINDEX('a',city) AS new_city FROM customers ORDER BY 1,2
---18.  Display the first and last character of each employee name
SELECT emp_name,LEFT(emp_name,1) as first_character, RIGHT(emp_name,1) as last_character FROM Employees ORDER BY 1,2,3
---19.  Remove all spaces from product names, not just spaces at the beginning or end
SELECT product_name, REPLACE(TRIM(product_name),' ','') as new_product FROM products ORDER BY 1,2
---20.  Generate an employee label in the format EMP-Amit-IT, using the employee name and department
SELECT CONCAT('EMP','-',emp_name,'-',department) AS new_label FROM Employees WHERE department IS NOT NULL

---------------------------------------------------------Coding Based Interview Questions--------------------------------------------------------------------
---21.  Display each product name in uppercase
SELECT product_name,UPPER(product_name) as products FROM products ORDER BY 1,2
---22.  Extract the first three characters of every city and convert them to uppercase
SELECT city, LOWER(LEFT(city,3)) AS new_city FROM Employees ORDER BY 1,2
---23.  Display only the first two characters of the email username, followed by ***, and preserve the domain
SELECT email,CONCAT(LEFT(email,2),'***',SUBSTRING(email,CHARINDEX('@',email)+1,LEN(email)))as new_mail FROM Employees WHERE email IS NOT NULL ORDER BY 1 
---24.  Extract the domain from an email address
SELECT email,SUBSTRING(email,CHARINDEX('@',email)+1,LEN(email)) as domain FROM Employees ORDER BY 1,2
---25.  Generate a code using the first two characters of the employee name and the last two characters of the department, all uppercase
SELECT UPPER(CONCAT(LEFT(emp_name,2),'',RIGHT(department,2))) AS new_text FROM Employees WHERE department IS NOT NULL;
---26.  Replace lowercase vowels and uppercase vowels of 'a' with * in a city name
SELECT city,REPLACE(REPLACE(city,SUBSTRING(city,CHARINDEX('a',LOWER(city)),1),'*'),SUBSTRING(REPLACE(city,SUBSTRING(city,CHARINDEX('a',LOWER(city)),1),'*'),CHARINDEX('e',LOWER(REPLACE(city,SUBSTRING(city,CHARINDEX('a',LOWER(city)),1),'*'))),1),'*') as new_text FROM Employees ORDER BY 1
---27.  Convert EMP-2026-001 into EMP2026001
SELECT REPLACE('EMP-2026-001','-','') AS New_Emp_text
---28.  Extract four characters starting at position 2 from each product name
SELECT product_name,SUBSTRING(product_name,2,4) as new_product_name FROM products ORDER BY 1,2
---29. Create a reference such as ORDER-1, ORDER-301, or ORDER-420 using the order ID
SELECT CONCAT('ORDER','-',order_id) as Order_Reference FROM orders ORDER BY 1
---30.  Convert each customer name to uppercase and remove all spaces from the result
SELECT customer_name,REPLACE(TRIM(UPPER(customer_name)),' ','') as new_text FROM customers ORDER BY 1,2
---31. Write a query to count the number of vowels in each employee name using SQL string functions
SELECT 
    emp_name,
    LEN(emp_name) - LEN(REPLACE(LOWER(emp_name), 'a', '')) +
    LEN(emp_name) - LEN(REPLACE(LOWER(emp_name), 'e', '')) +
    LEN(emp_name) - LEN(REPLACE(LOWER(emp_name), 'i', '')) +
    LEN(emp_name) - LEN(REPLACE(LOWER(emp_name), 'o', '')) +
    LEN(emp_name) - LEN(REPLACE(LOWER(emp_name), 'u', '')) AS Total_Vowels
FROM Employees;
---32. Write a query to extract the last word from each product name
SELECT 
    product_name,
    REVERSE(LEFT(REVERSE(product_name), 
    CHARINDEX(' ', REVERSE(product_name) + ' ') - 1)) AS Last_Word
FROM Products;
---33.  Write a query to identify customer names that are palindromes
SELECT customer_name,REVERSE(customer_name) as reverse_customer_names FROM customers WHERE customer_name = REVERSE(customer_name) ORDER BY 1,2
---34. Write a query to generate a product identifier using the first character of each word in the product name
SELECT product_name,CONCAT(LEFT(SUBSTRING(product_name,1,CHARINDEX(' ',product_name)),1), LEFT(SUBSTRING(product_name,CHARINDEX(' ',product_name)+1,LEN(product_name)),1)) AS product_identifier FROM products ORDER BY 1
---35.  Write a query to extract the middle character of employee names. For even-length names, extract both middle characters
SELECT 
    emp_name,
    SUBSTRING(
        emp_name,
        (LEN(emp_name) + 1) / 2,
        2 - (LEN(emp_name) % 2)
    ) AS Middle_Character
FROM Employees;