-----------------------------------------Databases & Tables: DDL, DML, DCL, TCL, Constraints, Data Types-------------------------------------------------------------------
/*
	Data Type ----------->	It defines the type of data present in each column of the table.

	Types of SQL Data Types

	Category	               Data types	                                Purpose
    Integer	               INT SMALLINT, BIGINT                    	Store whole numbers
    Exact numeric	       DECIMAL(p,s), NUMERIC(p,s)	            Store precise decimal values
    Approximate numeric	   FLOAT, REAL, DOUBLE PRECISION	        Store approximate decimal values
    Character	           CHAR(n), VARCHAR(n)	                    Store fixed-length or variable-length text
    Large text	           TEXT	                                    Store long text (database-dependent)
    Date and time	       DATE, TIME, TIMESTAMP                	Store dates and times
    Boolean	               BOOLEAN, BOOL                        	Store true/false values where supported
    Binary	               BINARY, VARBINARY, BLOB	                Store binary data such as files or images
    Specialized            JSON, UUID, XML                      	Store structured documents, identifiers, or XML where supported
 */

 ----Important concepts to remember
 /*
    INT  vs BIGINT  ----------->   INT is used to store integer values. BIGINT is used to store very large integer values.Its capacity is beyond INT.

    CHAR vs VARCHAR ----------->   CHAR is used to store the character upto fixed length. VARCHAR is used to store the character upto variable length.

    DECIMAL vs FLOAT ---------->   DECIMAL is used to store exact decimal values. FLOAT is used to store approximate decimal values. The proportion of error is high in FLOAT and there is no error in DECIMAL

    DATE    vs TIMESTAMP ------>   DATE is used to store the value of DATE type. TIMESTAMP2 is used to store the data in date and time format in a specific database behaviour.
 */

 -------------------------------------Examples----------------------------------------------------------------------------------------------------------------------
 ---1.  Create an Employees table with an integer ID, employee name, salary, and joining date
 DROP TABLE IF EXISTS Emp;
 CREATE TABLE Emp(
    ID                     INT                  ,
    name                   VARCHAR(20)          ,
    salary                 DECIMAL(10,2)        ,
    joining_date           DATE
 )
SELECT * FROM Emp;
---2.   Create a Products table where product prices must support two decimal places
DROP TABLE IF EXISTS pro;
CREATE TABLE pro(
    pro_id  INT                                 ,
    pro_name  VARCHAR(20)                       ,
    price   DECIMAL(10,2)                       
)
SELECT * FROM pro
---3.   Create a table storing a two-character country code and a variable-length city name
DROP TABLE IF EXISTS table_ans;
CREATE TABLE table_ans(
    country_code        CHAR(2)                 ,
    city                VARCHAR(10)
)
SELECT * FROM table_ans
---4.   Create a table that stores a customer's birth date and the exact date and time of registration
DROP TABLE IF EXISTS cust;
CREATE TABLE cust(
    custome_id      INT                     ,
    birth_date      DATE                    ,
    registration    DATETIME
)
SELECT * FROM cust
---5.   Create a table that stores a person's age and a potentially very large transaction count
DROP TABLE IF EXISTS person_data;
CREATE TABLE person_data(
    person_id               INT                     ,
    age                     INT                     ,
    transaction_count       BIGINT
)
SELECT * FROM person_data

---------------------------------------------------------Accenture Interview Questions---------------------------------------------------------------------------
---1.   What are SQL data types, and why are they important when designing database columns?
/*
    SQL Data Types defines the type of data assigned to the value present in the particular column of the database table.

    They are important in designing the database columns because:---

    (a.)    It help in maintaining the consistencies of the data.

    (b.)    They prevent unwanted entries from entering into the database table.

    (c.)    It helps in ordering all the values in the column with correct values.

    (d.)    With correct data types , we can properly convert the value from one type to another and is applicable for all the values in the column
*/

---2.   What is the difference between CHAR and VARCHAR? Give a suitable use case for each
/*
    CHAR --------> It helps in storing the characters of fixed length. If we store a character less than the specific length, then padding is performed.

    VARCHAR -----> It helps in storing the characters of variable length. If we store the character less than the specific length, no padding is done. Only that much character is stored
*/

---3.   What is the difference between INT, BIGINT, and SMALLINT?

/*
    INT     ----------> It can store normal integer values

    SMALLINT    ------> It can store very small integers

    BIGINT  -----------> It can store integers of very large range
*/

---4.   What is the difference between FLOAT and DECIMAL when storing financial values?
/*
    FLOAT      -----------> It can store approximate numeric values. It has very less error.  Ex:-- Scientific calculations, measurements

    DECIMAL    -----------> It can store exact numeric values. It has no error. Ex:--- prices
*/

---5.   Which SQL data type would you choose for employee names, salaries, joining dates, and a true/false employment status? Justify your choices
/*
    employee names ------->  VARCHAR      (It can store the value of variable length)

    salary         ------->  DECIMAL(10,2) (It can store only decimal values)

    joining dates   ------>  DATE          (It can store the values of date type)

    employee status  -------> BOOLEAN      (It can store the values of either True/ False)
*/

---------------------------------------------PwC Interview Questions-------------------------------------------------------------------------------------------------
---6.   Explain the difference between exact numeric types (DECIMAL, NUMERIC) and approximate numeric types (FLOAT, REAL)
/*
    DECIMAL --------------->    It can store exact numeric values. It has no error. Ex: price

    FLOAT   --------------->    It can store approximate numeric values. It has minimum error. Ex:  scientific calculation, 193.4566786

    REAL    --------------->    It can store approximate numeric values. But it has less preecision than FLOAT. Ex: 193.46
*/

---7.   How do precision and scale work in DECIMAL(12,3)?

/*
        DECIMAL(12,3)

        precision   ------------->  It has a total of 12 digits.

        scale       ------------->  It has three digits after decimal point.9 digits before decimal point
*/

---8.   Which data type would you select for storing monetary amounts in financial reports, and why?
/*
        DECIMAL --------->  It has exact decimal values. It has no error. So it can be used for storing monetary amounts in financial reports
*/

---9. What is the difference between DATE, TIME, and TIMESTAMP? When would you use each?
/*
        DATE    ------------>   It is used when we want to store the DATE value.

        TIME    ------------>   It is used when we want to  store the TIME value.

        DATETIME    -------->   It is used when we want to store the DATE as well as TIME.
    
*/

---10.  What problems can occur when a column uses an inappropriate data type for its business purpose?
/*
    (a.)    inconsistencies appears in the data

    (b.)    no proper ordering of data will occur

    (c.)    if we have a value in column of one type and apply inappropriate data type in it, the it will throw an error

    (d.)    incorrect entries of the data may enter into the column of the database table
*/

------------------------------------------------Deloitte Interview — Analytical Problem-Solving Questions-----------------------------------------------------------------

---11. A banking application stores transaction amounts using FLOAT. Explain the potential precision issues and recommend a more suitable data type
/*
    For storing the transaction amount, the appropriate amount to be used is DECIMAL 

    The potential issues that may occur is

    (a.)    FLOAT stores approximate decimal values.

    (b.)    It has less error. But has some inconsistencies.

    Ex:--- scientific calculations
*/
---12. A company stores telephone numbers using BIGINT. What problems could arise with leading zeros, country codes, and non-numeric characters? Which data type is more appropriate?
/*
    The problems that can occur using BIGINT is

    (a.)    leading zeros ----------->  If we store the number using BIGINT for a telephone(09878976), then the leading zero gets removed.

    (b.)    country codes ---------->  It may use code such as '+91' which is a string. But telelphone number is BIGINT, BIGINT cannot store string values

    (c.)    non-numeric values  ----->  BIGINT can only store very large integer values. It cannot handle non-numeric values
*/

---13. A financial system requires amounts up to 9999999999.99. What precision and scale should be selected for an exact numeric data type?
/*
    DECIMAL(12,2)
*/

DECLARE @amount DECIMAL(12,2) = '9999999999.99'
SELECT  @amount  AS amount

---14. An application must store dates of birth and event timestamps. Analyze which data types are appropriate and why using a single date-only type for both could be unsuitable.
/*
    dates of birth      ------------>       DATE(It stores the data of year, month, date)

    event timestamps    ------------>       DATETIME(It stores date as well as time)
*/
---15. A database stores product codes such as 00125, 00126, and 00127 as integers. What information could be lost, and which data type would better preserve the original codes?
DECLARE @pro_code1 INT = '00125'
SELECT  @pro_code1 AS proi_code1

DECLARE @pro_code2 INT = '00126'
SELECT  @pro_code2 AS proi_code2

DECLARE @pro_code3 INT = '00127'
SELECT  @pro_code3 AS proi_code3

---Observations:-- 

---WE have defined all the three product codes with INT type. So when we use the value 00125, it will automatically remove 00 from the beginning of the code.

---This will repart for the above two codes

DECLARE @pro_code11 CHAR(5) = '00125'
SELECT  @pro_code11 AS proi_code11

DECLARE @pro_code12 CHAR(5) = '00126'
SELECT  @pro_code12 AS proi_code12

DECLARE @pro_code13 CHAR(5) = '00127'
SELECT  @pro_code13 AS proi_code13

---Observations:-- 

---To preserve all the zeros before the decimal, we have defined the variable using CHAR.
--------------------------------------------------------------E&Y (EY) Interview Questions-------------------------------------------------------------------------------------------------
---16. Differentiate VARCHAR, TEXT, and CHAR, including the database-dependent considerations when choosing between them
/*
    CHAR    ----------> It represents the chracter of fixed length

    VARCHAR ----------> It represents the character of variable length

    TEXT    ----------> It represents very large text
*/
---17. What is the difference between DECIMAL(8,2) and DECIMAL(10,4) in terms of precision and scale?
/*
    DECIMAL(8,2)    ------------->  Precision = 8, no of digits after decimal point = 2

    DECIMAL(10,4)   ------------->  Precision = 10, no of digits after decimal point = 2
*/
---18. How do SQL data types influence data accuracy and storage requirements?
/*
    SQL data types uses DECIMAL to define the exact decimal values. It also uses INT to define the Integer values.

    It uses SMALL, INT, BIGINT to store the data of integers of various sizes.
*/
---19. What is the difference between BOOLEAN and integer-based representations of true/false values across different database systems?
/*
    BOOLEAN ------------>   It uses data type as BOOL. It represents values such as True and False.

    integer-based representations of true/false ----------->  It uses int data type. For true, it uses 1 and for flase , it uses 0.

*/
---20. Which data types would you choose for customer names, email addresses, account balances, dates of birth, and unique identifiers? Explain your selection criteria
/*
    customer names ---------->  It can store the name in VARCHAR. As name is a varibale length. To store the string in variable length, VARCHAR is used.

    email addresses --------->  It can store the email in VARCHAR. As email address is a varibale length. To store the string in variable length, VARCHAR is used.

    account balances -------->  It can store the account balance in DECIMAL. As account balance needs exact decimals with no error. So that the calculation can be done properly.

    dates of birth  --------->  It can store the value in DATE format. The data must ne Year-month-day

    unique identifiers ------>  It can store the value in integer format. Identifiers are usually whole number. So the best data type for it is INT

*/
--------------------------------------------------------------Amgen Interview Questions-------------------------------------------------------------------------------------------
---21. Which SQL data types are suitable for storing patient identifiers, laboratory measurements, sample collection dates, and test results? Explain the considerations for each.
/*
    patient identifiers ---------> VARCHAR(20). Ex:-- 'PT0003'

    laboratory measurements -------> DECIMAL(10,2). Ex: 23.21. It has no error. Itb is accurate.

    sample collection dates --------> DATE. It can store the data of year, month and day

    sample collection datestime ------> DATETIME. It can store the data in date and time.

    test results ---------> numeric(DECIMAL),   string(VARCHAR)
*/
---22. How would you select a numeric data type for laboratory measurements requiring high decimal precision?
/*
   For selecting a numeric data type for laboratory measurements requiring high decimal precision, 
   
   we need (a.) DECIMAL --------> for using exact decimal value with no error.

            (b.) FLOAT  --------> FORusing approximate decimal value with less error.
*/
---23. What is the difference between DATE and TIMESTAMP when recording sample collection and processing events?
/*
        DATE    ---------> It stores the data of date type(It has only Year, month and date).

        TIMESTAMP  ------> It stores the data of date and time
*/
---24. When storing scientific measurements, how do FLOAT and DECIMAL differ in precision and suitability?
/*
    Feature                                 	FLOAT	                                                         DECIMAL(p,s)
  Representation	                      Approximate,                                                 binary floating-point	Exact decimal
  Precision	                              Approximate; depends on type	                               Defined by precision and scale
  Rounding	                              Binary representation can introduce rounding differences	   Stores decimal values exactly within its declared precision
  Very small values	Often suitable,       depending on range	                                       Limited by scale and supported precision
  Scientific calculations	              Suitable for many scientific computations	                   Suitable when exact decimal representation is required
  Financial calculations	              Generally avoided	                                           Preferred
*/
---25. A research database stores a measurement that can be negative, positive, or extremely small. How would you evaluate the appropriate numeric data type, precision, scale, and supported range?

/*
A. Sign
The type must support both negative and positive values.
- Avoid unsigned numeric types.
- Check the database's supported signed range.

B. Precision
Precision is the total number of significant digits supported by a numeric type or declaration.

For example, DECIMAL(15,8) allows 15 total digits, with 8 after the decimal point.

C. Scale
Scale specifies the number of digits after the decimal point for DECIMAL.

For example:
measurement DECIMAL(15,8)

Can store -1234.12345678, but cannot preserve arbitrary values with more than 8 fractional digits.

D. Supported range
For extremely small measurements, determine whether values can be close to zero, such as 0.0000000000123.
- A fixed-scale DECIMAL may require a large scale to preserve such values.
- A floating-point type may represent extremely small magnitudes more conveniently, depending on the database and chosen precision.
- Check for underflow, overflow, rounding, and the database's numeric limits.

*/