use employees;

# SELECT first_name, last_name
# FROM employees
# ORDER BY first_name DESC, last_name ASC;

# SELECT DISTINCT first_name
# FROM employees
# ORDER BY first_name;

# SELECT first_name, last_name FROM employees GROUP BY first_name DESC, last_name;

select first_name, last_name from employees
where first_name = 'Irena' OR
      first_name = 'Vidya' OR
      first_name = 'Maya' AND
      gender = 'male' ORDER BY last_name, first_name;

select last_name from employees
where last_name like 'E%' OR last_name like '%E'
ORDER BY emp_no DESC;

select last_name from employees
where last_name like 'E%' AND last_name like '%E'
ORDER BY emp_no DESC;
#
# select * from employees
# where hire_date BETWEEN 1990 and 1999 AND birth_date = '%12-25';

