-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on
salaries.emp_no=employees.emp_no


-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select employees.first_name, employees.last_name, employees.hire_date
from employees
where (select extract (year from hire_date) as hd) = '1986'


-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no,departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name
FROM departments
LEFT JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select employees.emp_no, employees.last_name,employees.first_name,departments.dept_name
from employees
left join dept_emp  on employees.emp_no = dept_emp.emp_no
left join departments on departments.dept_no = dept_emp.dept_no;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select employees.first_name,employees.last_name,employees.sex 
from employees where first_name = 'Hercules' and last_name like'B%'


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
and dept_name = 'Sales'


-- 7. List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
where dept_name = 'Sales' or dept_name =  'Development'


-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

select last_name,
count(last_name) 
as value_occurence 
from employees 
group by last_name 
order by value_occurence desc

