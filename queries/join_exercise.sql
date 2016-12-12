USE join_test_db;

SELECT * FROM users u JOIN roles r on r.id = u.role_id;

SELECT
  u.name,
  r.name
FROM users u
  JOIN roles r ON r.id = u.role_id;

INSERT INTO users (name, email, role_id)
  VALUES ('James', 'j@swbell.net', null),
    ('Trey', 'treyrey@swbell.net', 2),
    ('Tyler', 'tyty@swbell.net', 2),
    ('Emma', 'e@swbell.net', 2);

SELECT * FROM users u JOIN roles r ON r.id = u.role_id;

SELECT * FROM users u LEFT JOIN roles r  on r.id = u.role_id;

SELECT * FROM users u RIGHT JOIN roles r  on r.id = u.role_id;
# Left/Right will determine which gets the priority

UPDATE users SET role_id = 4 WHERE role_id is NULL;

SELECT count(*) as Count, r.name
FROM roles r LEFT JOIN users u
  ON u.role_id = r.id
GROUP BY r.name;

SELECT * FROM users;

USE employees;

SELECT DISTINCT
  d.dept_name                            AS 'Department Name',
  concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
  JOIN dept_manager dm ON dm.dept_no = d.dept_no
  JOIN employees e ON e.emp_no = dm.emp_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;

SELECT DISTINCT
  d.dept_name                            AS 'Department Name',
  concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
  JOIN dept_manager dm ON dm.dept_no = d.dept_no
  JOIN employees e ON e.emp_no = dm.emp_no
WHERE dm.to_date > now()
      AND e.gender = "F"
ORDER BY d.dept_name;


SELECT *
FROM departments;

SELECT *
FROM dept_emp;


SELECT
  t.title,
  count(*) AS Count
FROM employees e
  JOIN dept_emp de ON de.emp_no = e.emp_no
                      AND de.dept_no = 'd009'
  JOIN titles t ON t.emp_no = e.emp_no
WHERE de.to_date > now() AND t.to_date > now()
GROUP BY t.title;

SELECT
  d.dept_name                            AS 'Department Name',
  concat(e.first_name, ' ', e.last_name) AS 'Name',
  s.salary                               AS 'Salary'
FROM dept_manager dm
  JOIN employees e ON e.emp_no = dm.emp_no
  JOIN salaries s ON s.emp_no = e.emp_no AND s.to_date > now()
  JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;

SELECT
  concat(e.first_name, ' ', e.last_name)   AS 'Employee Name',
  d.dept_name                              AS 'Department Name',
  concat(em.first_name, ' ', em.last_name) AS 'Manager\'s Name'
FROM employees e
  JOIN dept_emp de ON de.emp_no = e.emp_no
  JOIN dept_manager dm ON dm.dept_no = de.dept_no
  JOIN employees em ON em.emp_no = dm.emp_no
  JOIN departments d ON d.dept_no = de.dept_no
WHERE dm.to_date > now()
      AND de.to_date > now()
ORDER BY d.dept_name;