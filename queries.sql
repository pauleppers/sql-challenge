-- 1 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.employ_no;

-- 2
SELECT emp_no, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
LEFT JOIN department AS d
ON dm.dept_no = d.dept_no
LEFT JOIN employees AS e
ON dm.emp_no=e.emp_no;

--4 List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
ON e.emp_no = de.empl_no
LEFT JOIN department AS d
ON de.dept_no = d.dept_no;

--5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'AND last_name LIKE 'B%';

--6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.empl_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
LEFT JOIN employees AS e
ON de.empl_no = e.emp_no
LEFT JOIN department AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.empl_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
LEFT JOIN employees AS e
ON de.empl_no = e.emp_no
LEFT JOIN department AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS total_count
FROM employees
GROUP BY last_name
ORDER BY total_count DESC;
