use employees;

select first_name from employees
where first_name = 'Irena' OR
      first_name = 'Vidya' OR
      first_name = 'Maya' AND
      gender = 'm';

select last_name from employees
where last_name like 'E%' OR last_name like '%E';

select last_name from employees
where last_name like 'E%' AND last_name like '%E';

select * from employees
where hire_date like '199%' AND birth_date LIKE '%12-25';

SELECT * FROM employees WHERE birth_date LIKE '%-25-12';

SELECT * FROM employees WHERE last_name like '%q%';