--------------------------------------------------------- SQL Introduction------------------------------------------------------------------------------------------------------------
/*
	SQL stands for Structured Query Language.

	It is the language that the user uses it to interact with the relational database systems.

	It helps the user to communicate with the database system so that the database in returns gives the response back to the user.

	It is used in the relational database systems like MS-SQL, PostGre SQL Server, SQL Server Management Studio etc.

	Applications of SQL

	(a.)	SQL is used in the field of data analytics so as to convert the raw data into actionable insights and derive all the insights from the data

	(b.)	It is  used in the field of data engineering to contruct all the pipelines

	(c.)	It is used in the field of data science to extract useful insights from the user and derieve the conclusions for the data

	(d.)	It is used in Job automation so as to run all the process at regular intervals of time

	(e.)	It is used in the field of web design and builds many databases so as to store huge amount of data


	Key concepts used in SQL

	1.	Database	-------->	It is an organized collection of data that can be stored, accessed, retrieved etc.

	2.	Table		-------->	It is the place where the data is organized into the rows and columns.

	3.	Row			-------->	It can be defined as the horizontal record that explains about the entire enetity of the data

	4.	Column		-------->	It can be defined as the vertical record that explains about the attributes or the features used in the database.

	5.	DBMS		-------->	It can be defined as the software that can be used to create, store, control, access, retrieve and update the data in the database.

	6.	RDBMS		-------->	It is the database that is used in the relational tables where the data is tored in form of rows and columns.

	7.	Primary	Key	-------->	It helps in uniquely identifying the records in the table.

	8.	Foreign Key	-------->	It helps in establishing the relationships between the tables.

	9.	NULL		-------->	It can be defined as missing or unknown records in the database table.
*/
---------------------------------------------------------Basic Level Interview Questions----------------------------------------------------------------------------
---1.	Retrieve all the records of Employees
SELECT * FROM Employees
---2.	Retrieve name and salary of Employees
SELECT emp_name,salary FROM Employees
---3.	Filter records where salary is greater than 35000
SELECT * FROM Employees WHERE salary > 35000 ORDER BY salary
---4.	Insert a record of Employee
INSERT INTO Employees(emp_id,emp_name,department,salary,city,Hire_Date,birth_date,email,status,dept_id) VALUES(12,'Amisha','IT',158769,'Bangalore',GETDATE(),'1997-08-23','amisha.sharma97@gmail.com','Active','101')
---5.	Update a record
UPDATE x
SET    x.salary = x.salary+10000
FROM   Employees x
WHERE  x.dept_id = '103'

------------------------------------------------------Analytical Level Interview Questions--------------------------------------------------------------------------
---6.	Write a query to retrieve all employees earning more than ₹40,000.
SELECT * FROM Employees WHERE salary > 40000 ORDER BY salary
---7.   Write a query to display only employee names and salaries.
SELECT emp_name,salary FROM Employees
---8.   Write a query to find employees earning exactly ₹30,000.
SELECT * FROM Employees WHERE salary = '30000'
---9.	Write a query to insert a new employee into a table.
INSERT INTO Employees(emp_id,emp_name,department,salary,city,Hire_Date,birth_date,email,status,dept_id) VALUES(13,'Anamika','IT',178769,'Pune',GETDATE(),'1996-07-20','anamika.sharma96@gmail.com','Active','105')
---10.	Write a query to increase every employee's salary by 10%.
SELECT emp_name,salary,(salary+(0.1*salary)) AS new_salary FROM Employees