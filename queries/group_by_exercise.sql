use employees;

SELECT DISTINCT title FROM titles
GROUP BY title ASC;

SELECT DISTINCT first_name, last_name from employees
WHERE last_name LIKE 'E%' and last_name like '%e';

SELECT DISTINCT first_name, last_name from employees
WHERE last_name LIKE '%q%';