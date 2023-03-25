
SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;
SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON s.emp_no = e.emp_no;

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date like '%1986';

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
 FROM employees e
 inner JOIN dept_manager dm
  ON e.emp_no = dm.emp_no
 inner JOIN departments d
  ON dm.dept_no = d.dept_no;