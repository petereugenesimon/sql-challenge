create table titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	primary key (title_id)
);

create table employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

create table departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	primary key (dept_no)
);

create table department_employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references employees(emp_no)
);

create table department_managers (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
