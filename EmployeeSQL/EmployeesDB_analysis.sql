-- Data Analysis

-- employee number, last name, first name, sex and salary date for all employees

SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- first name, last name, and hire date for all employees hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

-- manager of each dept, department number, department name, manager's employee number, last name and first name
	
SELECT 
		dept_manager.dept_no,
		departments.dept_name,
		dept_manager.emp_no,
		employees.last_name,
		employees.first_name
FROM
		employees
		INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
		INNER JOIN departments ON departments.dept_no = dept_manager.dept_no;
		
-- the department of each employee with employee number, last name, first name and department name

SELECT
		dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM 
		employees
		INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
		INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;
		
-- first name, last name, sex of employees with first name Hercules and last name starting with B

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- all employees in the Sales Dept with employee number, last name, first name and department name

SELECT
		dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM 
		employees
		INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
		INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
		
WHERE departments.dept_name = 'Sales';

-- all employees in Sales and Development with employee number, last name, first name and department name
	
SELECT
		dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM 
		employees
		INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
		INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
		
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- frequency count of employee last names in descending order

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;