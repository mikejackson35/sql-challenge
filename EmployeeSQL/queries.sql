SELECT  e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees AS e, salaries AS s
WHERE e.emp_no = s.emp_no;

SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e;

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no;

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no;

SELECT e.first_name, e.last_name, e.sex 
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, 
COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC; 

