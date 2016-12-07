use employees;

select first_name from employees
where first_name in('Irena', 'Vidya','Maya');

select last_name from employees
where last_name like 'E%';

select * from employees
where hire_date BETWEEN 1990 and 1999;

SELECT * FROM employees WHERE birth_date = '%-25-12';

SELECT * FROM employees WHERE last_name like '%q%';