use codeup;


# # Suboptimal way to look at data from two tables
# SELECT employees.*, salaries.*
# FROM employees, salaries
# WHERE employees.emp_no = 10010
# AND salaries.emp_no = 10010
# limit 100;

CREATE TABLE quotes (
  id INT NOT NULL AUTO_INCREMENT,
  author VARCHAR(50) NOT NULL,
  content VARCHAR(240) NOT NULL,
  PRIMARY KEY (id)
);

show tables;

DESCRIBE quotes;

ALTER TABLE quotes
  ADD UNIQUE(content);

DESCRIBE quotes;

USE employees;
SELECT *
FROM departments;