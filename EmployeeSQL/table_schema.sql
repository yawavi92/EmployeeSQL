--DATA ENGGINEERING
CREATE TABLE Employees (
emp_no int PRIMARY KEY NOT NULL, 
emp_title_id VARCHAR (30) NOT NULL,
birth_date date NOT NULL, 
first_name VARCHAR (30) NOT NULL,
last_name VARCHAR (30) NOT NULL,
sex VARCHAR (1) NOT NULL,
hire_date date NOT NULL);

CREATE TABLE Department(
dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
dept_name VARCHAR(30) NOT NULL);   

CREATE TABLE Titles ( 
title_id VARCHAR(5) PRIMARY KEY NOT NULL,
title VARCHAR(30) NOT NULL);


CREATE TABLE Dept_emp(
emp_no int NOT NULL, 
dept_no VARCHAR (4) NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Department (dept_no));
	
CREATE TABLE Salary(
emp_no int NOT NULL,
salary int NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));
	
CREATE TABLE Dept_manager(
dept_no VARCHAR (4) NOT NULL,
emp_no int NOT NULL,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Department (dept_no));
