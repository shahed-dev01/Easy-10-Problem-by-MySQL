-- Find all employees who are younger than 30 years old.
SELECT * 
FROM employee_demographics
WHERE age > 30;

-- Find the names of employees whose first name starts with the letter "M".
SELECT first_name
FROM employee_demographics
WHERE first_name LIKE 'M%';

-- Find employees whose first name has exactly 5 letters.
SELECT first_name
FROM employee_demographics
WHERE first_name LIKE '_____';

-- Count how many employees are in each gender group.
SELECT gender, COUNT(*) AS count_per_gender
FROM employee_demographics
GROUP BY gender;

-- Find the highest salary in the employee_salary table.
SELECT MAX(salary)
FROM employee_salary;

-- Find the lowest salary in the employee_salary table.
SELECT MIN(salary)
FROM employee_salary;

-- Calculate the average salary of employees and round it down to the nearest whole number.
SELECT FLOOR(AVG(salary)) AS Average_salary
FROM employee_salary;

-- List all employees sorted by their age in ascending order.
SELECT age
FROM employee_demographics
ORDER BY age ASC;

-- Show the top 3 employees who have the highest salary.
SELECT first_name, last_name, salary
FROM employee_salary
ORDER BY salary DESC
LIMIT 3;

-- Find employees who earn more than the average salary and sort them by salary in descending order.
SELECT *
FROM employee_salary
WHERE salary > (SELECT AVG(salary) FROM employee_salary)
ORDER BY salary DESC;