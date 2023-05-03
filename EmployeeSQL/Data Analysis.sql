-- List the employee number, last name, first name, sex and salary of each employee
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on
salaries.emp_no=employees.emp_no;

-- List the first name, last name and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date like '%%/%%/1986';

-- List the manager of each department along with their department number, department name, employee number, last name and first name
select departments.dept_no, departments.dept_name, department_managers.emp_no, employees.last_name, employees.first_name
from departments
inner join department_managers on
department_managers.dept_no=departments.dept_no
inner join employees on
employees.emp_no=department_managers.emp_no;

-- List the department number for each employee along with that employee's employee number, last name, first name and department name
select department_employees.dept_no, department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from department_employees
inner join employees on
employees.emp_no=department_employees.emp_no
inner join departments on
departments.dept_no=department_employees.dept_no;

-- List first name, last name and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- List each employee in the Sales department, including their employee number, last name and first name
select departments.dept_no, departments.dept_name, department_employees.emp_no, employees.last_name, employees.first_name
from departments
inner join department_employees on
department_employees.dept_no=departments.dept_no
inner join employees on
employees.emp_no=department_employees.emp_no
where dept_name = 'Sales';


-- List each employee in the Sales and Development departments, including their employee number, last name, first name and department name
select departments.dept_no, departments.dept_name, department_employees.emp_no, employees.last_name, employees.first_name
from departments
inner join department_employees on
department_employees.dept_no=departments.dept_no
inner join employees on
employees.emp_no=department_employees.emp_no
where dept_name = 'Sales'
or dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names
select last_name, count(last_name)as frequency
from employees
group by last_name
order by
count(last_name)desc;

