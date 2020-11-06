-- create tables

-- create departments table with dept_no as primary key
CREATE TABLE departments(
	dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(255) NOT NULL
);

-- create dept_emp table, both columns have duplicate data so neither can be a primary key
CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(255) NOT NULL
);

-- altered emp_no column datatype to allow later joining with other tables
ALTER TABLE dept_emp
ALTER COLUMN emp_no TYPE VARCHAR(255);

-- create dept_manager with emp_no as primary key
CREATE TABLE dept_manager(
	dept_no VARCHAR(255) NOT NULL,
	emp_no VARCHAR(255) PRIMARY KEY
);

-- create employees table with emp_no as primary key
CREATE TABLE employess(
	emp_no VARCHAR(255) PRIMARY KEY NOT NULL,
	emp_title VARCHAR(255),
	birth_date VARCHAR(255),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date VARCHAR(255)
);

-- correct spelling mistake in employees table title
ALTER TABLE employess
	RENAME TO employees;

-- create salaries table with emp_no as primary key
CREATE TABLE salaries(
	emp_no VARCHAR(255) PRIMARY KEY NOT NULL,
	salary INTEGER
);

-- create titles table with title_id as primary key
CREATE TABLE titles(
	title_id VARCHAR(255) PRIMARY KEY NOT NULL,
	title VARCHAR(255) NOT NULL
);

-- test that csv's imported correctly by selecting all from each table
SELECT * FROM dept_emp;

