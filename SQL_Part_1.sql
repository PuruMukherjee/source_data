-- The insert Query is used to insert Data into a Table
-- Using insert query you can add data to your table one row at a time

-- The options with Insert query
-- Specify the columns in which Data needs to be stored

-- Do not specify the column in which Data needs to be stored.
-- ( In this case you would have to make sure that the order in which data is placed in the INSERT
--   STATEMENT in the same order in which the Target fields	exists in the table )


-- Creating	tables in SQL require you to do three things
-- Name the table
-- Define the column
-- Mention DataTypes of columns

USE SQL_Basics_202306

-- write all SQL keywords in Upper Case letters
-- because when you write codet in a company this is the convention that is used

--- To make sure that table has been created


--- Datatypes in SQL

-- The type of value given is called a DataTYPES
--- THE data is divided into different types
--- we have numeric data ( integer are whole numbers, floating point numbers)
-- the datatype to store whole numbers is INT
-- The datatype to store floating point number is DECIMAL
-- The datatype to store character is char
-- datatypes to store string is VARCHAR

-- In RDBMS we have seen that Entity/ ROW/Typle is the row of the table
-- Attributes hold some value, where we will define the attribute on the Data

-- example in the case of Employee table
-- the different attributes are
-- employee id,
-- employee name,
-- employee date of birth
-- emaployee email
-- employee department


-- The attribute employee id is a whole number and will be represented as an Integer
-- the employee name is of type String hence the datatype is VARCHAR
-- the emplotee dob is of type datetime hence the datatype is DATETIME

-- The different datatypes in SQL
-- The first one is 

-- The first we will start with DDL ( DATA DEFINITION LANGUAGE)
-- The ddl commands are
-- CREATE
-- DROP
-- TRUNCATE


-- TO Execute SQL commands, we have to create a DataBase
-- Inside the DataBase we will create the tables
-- The Syntax to create the DataBase

-- to create a Database the command is
-- The syntax is CREATE DATABASE  followed by the Database name
-- The syntax is CREATE DATABASE followed by the DataBase name
-- The syntax is create Database followed by the DATABASE name -- example -- CREATE DATABASE friends_info ;


-- The syntax to enter into a Database is 
--- The syntax to enter into a Database is
USE SQL_Basics_202306;

-- to change	DATABASE
USE Movies;

--The syntax to rever back to the SQL_Basics_202306
USE SQL_Basics_202306;
-- entering into database
USE SQL_Basics_202306;
-- after entering into a Database, we will create a Table
-- the next step is how to create a Table

-- THE query can be written in multiple lines
CREATE TABLE table_name
(-- based on the attribute of the table, we will have to specify the datatype of that attribute
attribute1  datatype,
attribute2 datatype,
attribute3 datatype
);

-- we can create a table with and without constraints
-- to see the tables in a database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS	
--- Create command in SQL

--- Now that we have selected a Database, we will create a table inside the database
USE SQL_Basics_202306;
--- Create a table student without any constraints
--- any query can be spread over multiple lines
CREATE TABLE student
(
	student_id INTEGER
	,student_name VARCHAR(30)
	,student_branch VARCHAR(30)
	,student_marks DECIMAL(5,2)
	);

--- Once the table is create the table will be visible in the Object Explorer
--- The student table right now is an empty table
-- To see all the records inside the student table
-- the query is 

EXEC sp_help student
EXEC sp_help employee;

-- INSERT command is DATA Manipulation language
-- Insert command is used to insert data into tables.
-- here we have to pass the values of all the attributes
-- we will also see how to insert a single row with many attributes
-- we will also see how to insert a single row with fewer attributes
INSERT INTO student
(
student_id
,student_name
,student_branch
,student_marks
)VALUES
(
1,
'Arjun',
'Computer Science',
73.99
);

--- https://www.youtube.com/watch?v=zPes5jBZ62c

INSERT INTO student
(

student_id
,student_name
,student_branch
,student_marks
)VALUES
(
2,
'Amar' -- if the data type is of type VARCHAR or a CHAR or a string, the value should be enclosed in single quotes
,'Computer Science'
,73.90
);

-- In the above scenario, we have not discussed any tables with constraints
-- this means the table has not been created with constraints
-- This mean we can give values for partial attributes and not all the attributes

-- if you want to give the values of only a few attributes
INSERT INTO student
(
student_id
,student_name
) VALUES
(
3
,'Kalyan'
);

-- the missing values will be NULL
SELECT * FROM student ;


-- if you want to provide all the values
INSERT INTO student
VALUES
(
4
,'Manoj'
,'Electrical Engineering'
,90
);

-- if you dont mention the column names and dont provide values for all the attributes
-- SQL will throw an error
-- In the example below, the value of the Marks attribute is not mentioned, hence the code will throw an error
INSERT INTO student
VALUES
(
5,
'Nalini',
'Economics'
);

-- The syntax to insert multiple rows at a time
INSERT INTO student
VALUES
(5, 'Venkat', 'Physics', 88),
(6, 'Anupama', 'History', 99),
(7, 'Prathibha', 'Chemistry', 88)

SELECT * FROM student ;

INSERT INTO student
VALUES
(8, 'Pramodh', 'Civil Engineering', 78),
(9, 'Samanth', 'Chemistry', 88)


SELECT * FROM student ;

EXEC sp_help student;

-- TO CHECK if the data is available in the STUDENT table
SELECT * FROM student

-- to know the structure of the student table we can run the following code
EXEC sp_help student ;

-- we can see that the student table has 4 attributes
-- To insert data in the student table
INSERT student
(
student_id
,student_name
,student_branch
) VALUES
(
10
,'Sandesh'
, 'Enviromental Sciences'
);

-- if we want to give the values of all the four attributes
INSERT INTO student
VALUES
(
11
,'Hema'
,'Economics'
,88
)

-- if you are not giving any column names and also you are not passing the value for every attribute in order
-- SQL will throw an error
-- when we do not provide the column names explicitly, SQL expects all the values for all the attributes and in the order
-- in which the table was created
INSERT INTO student
VALUES
(
12
,'Lavanya'
,'Social Science' -- here we are only passing ythe values of only three column values, hence SQL will throw an error
)

SELECT * FROM student

-- if you want to insert a single row , this is the syntax
INSERT INTO student
(
student_id
,student_name
,student_branch
,student_marks
)
VALUES
(
12
,'Aparajitha'
,'BioChemistry'
,78
);

--- New Topic
-- Constraints are given for attributes while creating the table
-- What are the common constraints

-- PRIMARY KEY
-- NOT NULL
-- CHECK
-- DEFAULT
--	UNIQUE
-- FOREIGN KEY
--- THESE are the common constraints while creating a table


--- if we assign any atribute or column as the primary key, the column cannot be assigned a NULL value
-- The value of this attribute cannot be left blank
-- if a column is assigned as a primary key then duplicate is also not allowed

CREATE  TABLE student_const
(
student_id INT
,student_name VARCHAR(30)
,student_branch VARCHAR(30)
,student_marks DECIMAL(5, 2)
, PRIMARY KEY(student_id)
);

-- to check the table
EXEC sp_help student_const

-- try to insert values in student_const with DUPLICATE and not null values

-- if you specify any attribute with a NOT NULL constraint, that particular column will not accept any NULL value

DROP TABLE student_const;

CREATE TABLE student_const
(
student_id INT
,student_name VARCHAR(30) NOT NULL
,student_branch VARCHAR(30)
,student_marks DECIMAL(5, 2)
, PRIMARY KEY ( student_id )
)


-- check the table
EXEC sp_help student_const ;

--The check constraint will check the value
DROP TABLE student_const;

CREATE TABLE student_const
(
student_id INT
, student_name VARCHAR(30) NOT NULL
, student_branch VARCHAR(30)
, student_marks DECIMAL(5, 2)
,PRIMARY KEY(student_id)
, CHECK(student_marks > 0 and student_marks <= 100)
);

--- data that will violate the CHECK condition
INSERT INTO student_const
(
student_id
,student_name
,student_branch
,student_marks
)
VALUES
(
1
,'Amit'
,'CSE'
,110
);

-- How to assign default value
DROP TABLE student_const
CREATE TABLE student_const
(
student_id INT
, student_name VARCHAR(30)
, student_branch VARCHAR(40) DEFAULT 'Computer Science and Engineering'
, student_marks DECIMAL(5, 2)
, PRIMARY KEY ( student_id)
, CHECK ( student_marks >= 0 and student_marks <= 100)
);

--- let's see how the DEFAULT option works
INSERT INTO student_const
(
student_id
,student_name
,student_marks
)VALUES
(
3,
'Ravi'
,88
);

SELECT * FROM student_const WHERE student_name = 'Ravi' ;

-- if you give any value for the college, then the default value will be replaced with a given value
INSERT INTO student_const
(
student_id
,student_name
,student_branch
,student_marks
)VALUES
(
4,
'Acharya',
'Mechanical Engineering',
74.75
);

SELECT * FROM student_const ;

-- The unique constraint is similar to the Primary key constraint
-- the only difference is that the Unique column (attribute) can have one NULL values

DROP TABLE student_const;

-- Create the student_const table where student_email is UNIQUE
-- Unique will not accept duplicate value
-- but unique will accept NULL VALUE

DROP TABLE student_const ;
CREATE TABLE student_const
(
student_id INT,
student_name VARCHAR(30) NOT NULL,
student_branch VARCHAR(40) DEFAULT 'Computer Science',
student_email VARCHAR(40) UNIQUE,
student_marks DECIMAL(5, 2),
PRIMARY KEY(student_id)
);

INSERT INTO student_const
VALUES
(1, 'Amit','Mechanical Engineering', 'amit@mechengg.com',66),
(2, 'Shekhar','Computer Science','amit@mechengg.com',88)

SELECT * FROM student_const ;

-- let's check the number of NULL values that will be accepted by the student_email columns
INSERT
INTO
student_const
VALUES
(
1,
'Asmitha',
'Economics',
NULL,
88)



INSERT INTO student_const
VALUES
(
2, 'Ashish', 'History', NULL, 99)



-- Foreign KEY
-- The foreign key is used to relate two different tables
-- lets say we have a student table 
--- the student table looks like this

DROP TABLE student_const;

CREATE TABLE student_const
(
student_id INT, --- this  is the primary key
student_name VARCHAR(100) NOT NULL,
student_course_id INT, -- this is the foreign key
student_email VARCHAR(50) UNIQUE,
student_marks DECIMAL(5, 2), 
PRIMARY KEY(student_id)
);

EXEC sp_help student_const ;
-- this statement will not execute as the student_email has a NULL value for column student_email

-- the primary key of one table is the foreign key of another table.
-- so we will create another table
DROP TABLE courses ;

CREATE TABLE courses
(
c_id INT,
course_name VARCHAR(30) NOT NULL UNIQUE,
PRIMARY KEY (c_id)
);


-- INSERT records in courses
INSERT INTO courses
(
c_id,
course_name
) VALUES
(
1,
'Economics'
);

INSERT INTO courses
(
c_id,
course_name
)VALUES
(
2,
'History'
)

SELECT * FROM courses

-- Now we will create the student_const table again
-- so that we can now create a foreign key in student_const table
-- that will point to the courses table
DROP TABLE student_const;

CREATE TABLE student_const
(
student_id INT,
student_name VARCHAR(30) NOT NULL,
student_course_id INT,
student_email VARCHAR(40) UNIQUE,
student_marks DECIMAL(5, 2),
PRIMARY KEY( student_id ),
FOREIGN KEY(student_course_id) REFERENCES courses(c_id)
)

INSERT INTO student_const
(
student_id,
student_name,
student_course_id,
student_email,
student_marks
)VALUES
(
1,
'Ajankiya',
1,
'ajinkiya@cse.com',
78
);

-- the below query will fail as there is no c_id in courses table that has a value of 3.
INSERT INTO student_const
(
student_id,
student_name,
student_course_id,
student_email,
student_marks
)VALUES
(
1,
'Ajankiya',
3,
'ajinkiya@cse.com',
78
);

-- CREATE TABLE AGAIN
CREATE TABLE student_constrants_take_1
(
student_id INT,
student_name VARCHAR(30) NOT NULL,
student_subject_id INT,
student_marks DECIMAL(5, 2),
PRIMARY KEY( student_id ),
FOREIGN KEY ( student_subject_id) REFERENCES courses(c_id)
);

-- Can insert NULL as value in foreign key
-- but cannot insert a value that does not exists in table courses in column c_id
INSERT INTO student_constrants_take_1
(
student_id,
student_name,
student_marks
)VALUES
(
1,
'Alok',
88
);


INSERT INTO student_constrants_take_1
(
student_id,
student_name,
student_marks
)VALUES
(
2,
'Ashok',
77
);

EXEC sp_help student_constrants_take_1 ;
-- Cannot insert a value in column


INSERT INTO student_constrants_take_1
(
student_id,
student_name,
student_subject_id,
student_marks
)VALUES
(
3,
'Alok',
5, -- c_id in courses table does not have a value 5
88
);

-- The below query will run without error
INSERT INTO student_constrants_take_1
VALUES
(
3,
'Prathibha',
1,
98
);


INSERT INTO student_constrants_take_1
VALUES
(
4,
'Lavanya',
2,
88
);

-- student_id is the primary key, hence we cannot assign NULL value to the column student_id
INSERT INTO student_constrants_take_1
(
student_name,
student_marks,
student_subject_id
) VALUES
(
'Anmol',
93,
2
);
-- check the data with the select query
SELECT * FROM student_constrants_take_1;

-- check the data in the courses table
SELECT * FROM courses

-- apart from student_id all other columns can have NULL VALUES
-- This is because we have not assigned any constraints on the other columns like NOT NULL

-- Let's check what will happen, when we assign NOT NULL constraints on the other
INSERT INTO student_constrants_take_1
(
student_id
) VALUES
(4
);

INSERT INTO student_constrants_take_1
(
student_id,
student_name
) VALUES
(5,
'Kethki'
);

SELECT * FROM student_constrants_take_1


-- lets create a the same table student_constrants_take_1 but with an additional column called student_email.
-- the student_email column should have the UNIQUE constraints on it
CREATE TABLE student_constrants_take_2

