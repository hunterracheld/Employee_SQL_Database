# Employee_SQL_Database

In this scenario, I am researching a project on employees of "the corporation" from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.
I designed tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 

Part I: Data Modeling
I inspect the CSVs and sketch out an ERD of the tables. 

Part II: Data Engineering
I use the information to create a table schema for each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints, and import each CSV file into the corresponding SQL table.



Part III: Data Analysis
With a complete database, I do the following:
  - List the following details of each employee: employee number, last name, first name, gender, and salary.
  - List employees who were hired in 1986.
  - List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
  - List the department of each employee with the following information: employee number, last name, first name, and department name.
  - List all employees whose first name is "Hercules" and last names begin with "B."
  - List all employees in the Sales department, including their employee number, last name, first name, and department name.
  - List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
  - In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



Lastly, I generate a visualization of the data by importing the SQL database into Pandas and creating a bar chart of average salaries by title.
