-- Create database tables
CREATE TABLE employees (
	emp_no VARCHAR(10) PRIMARY KEY,
  	birth_date DATE,
  	first_name VARCHAR(15),
  	last_name VARCHAR(30),
  	gender CHAR(6),
  	hire_date DATE
);

CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY,
  	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(10) NOT NULL,
  	dept_no VARCHAR(5) NOT NULL,
  	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no VARCHAR(10) NOT NULL,
  	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no VARCHAR(10) NOT NULL,
	salary INT,
  	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	emp_no VARCHAR(10) NOT NULL,
	title VARCHAR(30),
  	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Test tables and imports
select * from titles;