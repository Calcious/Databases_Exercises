use employees;

# SELECT first_name, last_name
# FROM employees
# ORDER BY first_name DESC, last_name ASC;

# SELECT DISTINCT first_name
# FROM employees
# ORDER BY first_name;

# SELECT first_name, last_name FROM employees GROUP BY first_name DESC, last_name;

select count(*), gender from employees
where first_name = 'Irena' OR
      first_name = 'Vidya' OR
      first_name = 'Maya' GROUP BY gender;

select concat(last_name, ' ', first_name) AS 'Full Name', last_name  from employees
where last_name like 'E%' OR last_name like '%E'
ORDER BY emp_no DESC;

select last_name from employees
where last_name like 'E%' AND last_name like '%E'
ORDER BY emp_no DESC;

select datediff(now(), hire_date) from employees
where hire_date LIKE '199%' AND birth_date LIKE '%-12-25';

SELECT DISTINCT last_name, count(last_name) as repeats,
  first_name, last_name
from employees
WHERE last_name
      LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY repeats DESC, first_name, last_name;

SELECT count(*) as 'Count of Genders', gender FROM employees GROUP BY gender;

SELECT count(first_name), first_name, last_name
FROM employees
WHERE first_name not LIKE '%a%'
GROUP BY first_name, last_name
ORDER BY count(first_name) DESC;
# If you're specifying columns, you need to specify

SELECT * FROM employees
WHERE first_name = 'Becky'
AND last_name = 'Angel';
# When you double check the results of how many people have this name

SELECT * FROM salaries;
SELECT avg(salary) FROM salaries GROUP BY emp_no;
