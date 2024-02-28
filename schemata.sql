CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
    title VARCHAR);
	
SELECT * FROM titles;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
	
SELECT * FROM employees;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR);
	
SELECT * FROM departments;

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
    salaries VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
SELECT * FROM salaries;

CREATE TABLE dept_emp(
	emp_no INT,dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no));
	
ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
ALTER TABLE dept_emp
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT,
    PRIMARY KEY (emp_no, dept_no));
	
ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

SELECT * FROM dept_manager;

