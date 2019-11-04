--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
  JOIN salaries s
    ON s.emp_no = e.emp_no;
	
--List employees who were hired in 1986.
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE e.hire_date LIKE '1986%';

--Query db for manager of each department with: department number, department name, 
	--the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM departments d
LEFT JOIN dept_manager dm
	ON d.dept_no = dm.dept_no
		JOIN employees e
			ON dm.emp_no = e.emp_no;

--Query db for department of each employee with: employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN departments d
	ON de.dept_no = d.dept_no
		JOIN employees e
			ON de.emp_no = e.emp_no;
			
--Query db for all employees whose first name is "Hercules" and last names begin with "B."
SELECT e.emp_no, e.first_name, e.last_name
FROM employees e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Query db for all employees in the Sales dept. with: employee number, last name, first name, and department name.
--Use union join for all employees and managers who work in Sales, save to new table 

SELECT *
INTO emp_dept_union
FROM(

	SELECT emp_no, dept_no
	FROM dept_emp
	WHERE dept_no IN
	(
  		SELECT dept_no
  		FROM departments
  		WHERE dept_name = 'Sales' 
  		)

	UNION ALL
	SELECT emp_no, dept_no
	FROM dept_manager
	WHERE dept_no IN
	(
		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'
		) 
) tu;

SELECT * FROM emp_dept_union

--Execute query
SELECT tu.emp_no, e.last_name, e.first_name, d.dept_name
FROM emp_dept_union tu
LEFT JOIN employees e
	ON tu.emp_no = e.emp_no
		JOIN departments d
			ON tu.dept_no = d.dept_no

--Query db for all employees in the Sales and Development departments, with: employee number, last name, first name,
	--and department name.
	
SELECT *
INTO sales_and_dev
FROM(

	SELECT emp_no, dept_no
	FROM dept_emp
	WHERE dept_no IN
	(
  		SELECT dept_no
  		FROM departments
  		WHERE dept_name IN ('Sales' , 'Development')
  		)

	UNION ALL
	SELECT emp_no, dept_no
	FROM dept_manager
	WHERE dept_no IN
	(
		SELECT dept_no
		FROM departments
		WHERE dept_name IN ('Sales', 'Development')
		) 
) sd;

SELECT * FROM sales_and_dev

--Execute query
SELECT sd.emp_no, e.last_name, e.first_name, d.dept_name
FROM sales_and_dev sd
LEFT JOIN employees e
	ON sd.emp_no = e.emp_no
		JOIN departments d
			ON sd.dept_no = d.dept_no

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" DESC;
