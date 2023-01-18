/* Query to display all tables in the employees_db*/
SELECT * FROM information_schema.tables WHERE table_schema='public';

/* Query to display the first 5 rows in the employees table*/
SELECT *
FROM employees
LIMIT 5;

/*1.) Display the minimum salary. */
SELECT MIN(salary) AS min_salary
FROM employees;

/* 2.) Display the highest salary.*/
SELECT MAX(salary) AS max_salary
FROM employees;

/*3.) Display the total salary of all employees.*/
SELECT SUM(salary) AS total_salary
FROM employees;

/*4.) Display the average salary of all employees.*/
SELECT ROUND(AVG(salary),2) AS avg_salary
FROM employees;

/* 5.) Issue a query to count the number of rows in the employee table. The result should be just one row. */
SELECT COUNT(*) AS total_rows
FROM employees;

/* 6.) Issue a query to count the number of employees that make commission. The result should be just one row. */
SELECT COUNT(*) AS emp_with_com
FROM employees
WHERE commission_pct != 0.0;

/* 7.) Issue a query to count the number of employees’ first name column. The result should be just one row. */
SELECT COUNT(first_name) AS first_name_count
FROM employees;