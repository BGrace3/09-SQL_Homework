-- DATA ANALYSIS
-- 1. 
SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.gender, 
	s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
	e.emp_no=s.emp_no;
	
-- 2.
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE e.hire_date < '1986-01-01';

-- 3.
SELECT departments.dept_no, 
	departments.dept_name, 
	dept_manager.emp_no, 
	employees.last_name, 
	employees.first_name, 
	dept_manager.from_date, 
	dept_manager.to_date 
FROM dept_manager
INNER JOIN departments ON
	departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON
	employees.emp_no=dept_manager.emp_no;

-- 4.
SELECT dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON
	employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
	departments.dept_no=dept_emp.dept_no;
	
-- 5.
SELECT * FROM employees
where first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
-- 6.
SELECT dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON
	employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
	departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

-- 7.
SELECT dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON
	employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
	departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
	OR departments.dept_name = 'Development';
	
-- 8.
SELECT COUNT(employees.last_name) AS "Name Count",
	employees.last_name
FROM employees
GROUP BY employees.last_name
ORDER BY "Name Count" DESC;