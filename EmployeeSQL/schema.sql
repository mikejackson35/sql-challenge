CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
)

CREATE TABLE employees (
	emp_no VARCHAR(50),
	emp_title VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(10),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles (title_id)
	);
	
CREATE TABLE salaries (
	emp_no VARCHAR(50),
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	);
	
CREATE TABLE dept_emp (
	emp_no VARCHAR(50),
	dept_no VARCHAR(50),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no VARCHAR(50),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	);
	

