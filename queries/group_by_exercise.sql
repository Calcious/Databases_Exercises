use employees;

SELECT DISTINCT title FROM titles
GROUP BY title ASC;

SELECT DISTINCT first_name, last_name from employees
WHERE last_name LIKE 'E%' and last_name like '%e';

SELECT DISTINCT last_name from employees
WHERE last_name LIKE '%q%' AND NOT '%qu%';

select * from employees
where hire_date LIKE '199%' AND birth_date LIKE '%12-25'
LIMIT 5;