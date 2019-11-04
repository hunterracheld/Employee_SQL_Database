DROP VIEW salary_and_title
CREATE VIEW salary_and_title AS

SELECT t.title, s.emp_no, s.salary
FROM titles t
FULL OUTER JOIN salaries s
	ON t.emp_no = s.emp_no

SELECT * FROM salary_and_title



SELECT title, AVG(salary) AS "Average Salary"
FROM salary_and_title
GROUP BY title;
