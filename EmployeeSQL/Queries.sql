--Data Analysis
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select Employees.emp_no AS "employee number", Employees.first_name AS "first name", Employees.last_name AS "last name", Employees.sex, salary.salary
FROM Employees
JOIN salary ON Employees.Emp_no = salary.salary;

--2. List first name, last name, and hire date for employees who were hired in 1986.
Select  Employees.first_name AS "first name", Employees.last_name AS "last name", Employees.sex,Employees.hire_date 
FROM Employees
WHERE hire_date  BETWEEN '1/1/1986' and '12/31/1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT department.dept_no, department.dept_name, dept_manager.emp_no, Employees.first_name, Employees.last_name
FROM department
JOIN dept_manager ON dept_manager.dept_no = department.dept_no
JOIN Employees ON Employees.emp_no = dept_manager.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Employees.emp_no AS Employees_number, Employees.first_name, Employees.last_name, department.dept_name
FROM EmpLoyees
JOIN dept_emp ON Employees.emp_no = dept_emp.emp_no
JOIN department ON department.dept_no = dept_emp.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex 
FROM Employees
WHERE first_name = 'Hercules' and  last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT first_name, last_name, Employees.emp_no, department.dept_name
FROM Employees
JOIN dept_emp ON dept_emp.emp_no = Employees.emp_no
JOIN department ON department.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT first_name, last_name, Employees.emp_no, department.dept_name
FROM Employees
JOIN dept_emp ON dept_emp.emp_no = Employees.emp_no
JOIN department ON department.dept_no = dept_emp.dept_no
WHERE dept_name IN ('Sales', 'Development');

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count (last_name) AS name_count
FROM Employees
GROUP BY last_name
ORDER BY name_count DESC;

__

