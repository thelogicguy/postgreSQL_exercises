/* 15.) Display all the last name of all the employees whose department location id are 1700 and 1800. */
SELECT last_name
FROM employees e 
LEFT JOIN departments d 
ON e.department_id = d.department_id
LEFT JOIN locations l 
ON l.location_id = d.location_id
WHERE l.location_id IN (1700, 1800);

/* 16.) Display the phone number of all the employees in the Marketing department. */
SELECT phone_number
FROM employees e 
LEFT JOIN departments d 
ON e.department_id = d.department_id
WHERE department_name = 'Marketing';

/* 17.) Display all the employees in the Shipping and Marketing departments who make more than 3100. */
SELECT first_name, last_name, department_name, salary
FROM employees e 
LEFT JOIN departments d 
ON e.department_id = d.department_id 
WHERE department_name IN ('Shipping', 'Marketing')
                        AND salary > 3100
ORDER BY salary DESC;

/* 18). Write an SQL query to print the first three characters of FIRST_NAME from employee’s table. */
SELECT LEFT(first_name, 3) AS name_abbrev
FROM employees;

/* 19.) Display all the employees who were hired before Tayler Fox.  */
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date < (SELECT hire_date
                    FROM employees
                    WHERE first_name = 'Tayler'
                        AND last_name = 'Fox')
ORDER BY hire_date;

/* 20.) Display names and salary of the employees in executive department.  */
SELECT first_name, last_name, department_name, salary
FROM employees e 
LEFT JOIN departments d 
ON e.department_id = d.department_id 
WHERE department_name = 'Executive'
ORDER BY salary;

/* 21.) Display the employees whose job ID is the same as that of employee 141. */
SELECT *
FROM jobs
LIMIT 5;

SELECT first_name, last_name, job_title
FROM employees e 
LEFT JOIN jobs j 
ON e.job_id = j.job_id
WHERE e.job_id = (SELECT job_id
                    FROM employees
                    WHERE employee_id = 141)
ORDER BY first_name;                  