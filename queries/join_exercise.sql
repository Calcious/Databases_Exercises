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

SELECT * FROM dept_manager;
SELECT * FROM departments;

SELECT * FROM dept_manager;