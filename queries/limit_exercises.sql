use employees;

SELECT DISTINCT last_name FROM employees GROUP BY last_name DESC LIMIT 10;

select * from employees
where hire_date LIKE '199%' AND birth_date LIKE '%12-25'
  ORDER BY birth_date
LIMIT 5 OFFSET 50;