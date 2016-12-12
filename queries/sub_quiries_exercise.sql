use employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;

SELECT first_name, emp_no, hire_date FROM employees WHERE hire_date in(
  SELECT hire_date FROM employees WHERE emp_no = 101010
);

SELECT * FROM employees e
WHERE e.hire_date = (
  SELECT hire_date FROM employees
  WHERE emp_no = '101010'
);

SELECT *
FROM employees e
INNER JOIN titles
ON e.emp_no = titles.emp_no
where e.first_name = 'Aamod';

SELECT e.first_name, e.last_name, title
FROM employees e, (
  SELECT emp_no, title
     FROM employees, titles
     WHERE titles.emp_no = employees.emp_no
     ) as employee_titles
WHERE e.first_name = 'Aamod';

SELECT gender, first_name, last_name
FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
WHERE gender = 'f';
