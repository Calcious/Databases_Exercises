use employees;

select first_name from employees
where first_name = 'Irena' OR
      first_name = 'Vidya' OR
      first_name = 'Maya' AND
      gender = 'male';

select last_name from employees
where last_name like 'E%' OR last_name like '%E';

select last_name from employees
where last_name like 'E%' AND last_name like '%E';

select * from employees
where hire_date BETWEEN 1990 and 1999 AND birth_date = '%12-25';

SELECT * FROM employees WHERE birth_date = '%-25-12';

SELECT * FROM employees WHERE last_name like '%q%';