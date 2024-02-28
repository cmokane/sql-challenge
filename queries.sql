-- question 1.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- question 2.
SELECT employees.first_name,
employees.last_name,
employees.hire_date
FROM Employees
WHERE hire_date >= '1985-12-31'
AND hire_date < '1987-01-01';

-- question 3. 
SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name, 
employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees 
ON dept_manager.emp_no = employees.emp_no;

-- question 4.
SELECT departments.dept_no,
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- question 5.
SELECT employees.last_name,
employees.first_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name like 'B%';

-- question 6.
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees 
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name='Sales';

-- question 7.
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees 
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name in ('Sales','Development' )

-- question 8.
SELECT last_name, COUNT(last_name) AS "Freqcount"
FROM employees
GROUP BY last_name
ORDER BY "Freqcount" DESC;