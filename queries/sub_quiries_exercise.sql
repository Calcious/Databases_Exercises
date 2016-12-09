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

SELECT * FROM employees WHERE first_name = 'Aamod';

SELECT emp_no, title FROM titles WHERE emp_no in(
  SELECT titles.emp_no FROM employees WHERE first_name = 'Aamod'
);

SELECT emp_no, hire_date FROM employees WHERE hire_date in(
  SELECT hire_date FROM employees WHERE emp_no = 101010
);