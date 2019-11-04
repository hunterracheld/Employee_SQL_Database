--DROP TABLE departments;
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR (30),
	PRIMARY KEY (dept_no)
);
SELECT * FROM departments;

--DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR,
	from_date DATE, 
	to_date DATE,
	PRIMARY KEY ("emp_no", "dept_no")	
);

SELECT * FROM dept_emp;

--DROP TABLE dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT, 
	from_date DATE, 
	to_date DATE,
	PRIMARY KEY ("dept_no", "emp_no")
	
);

SELECT * FROM dept_manager;

--DROP TABLE employees
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date VARCHAR
);

SELECT * FROM employees;

--DROP TABLE salaries
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date DATE,
	to_date DATE
);

SELECT * FROM salaries;

--DROP TABLE titles
CREATE TABLE titles(
	emp_no INT,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

SELECT * FROM titles;

ALTER TABLE titles
ADD id SERIAL PRIMARY KEY;

