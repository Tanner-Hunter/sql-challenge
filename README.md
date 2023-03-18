# sql-challenge
During this project, I did  research about people who were employed by the company, Pewlett Hackard, during the 1980s and 1990s. I designed six tables to hold the data from six CSV files, imported the CSV files into a SQL database, and then answered questions about the data. I performed data modeling, data engineering and data analysis while doing these tasks. First, to model the data, I inspected the CSV files and then sketched an ERD of the tables. This ERD is saved in this folder as ERD.png. Next, I created a table schema for each of the six CSV files, remembering to specify the data types, primary keys, foreign keys and other constraints. Then, I imported each CSV file into SQL tables. My table schemata is saved in the file table_schemata.sql.

# Analysis

Next, for the Data Analysis part of this project, the file queries.sql contains my queries that I wrote to answer the following:

1.List the employee number, last name, first name, sex and salary of each employee.
 
2.List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee's employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (how many employees share each last name).
