/* 8.) Display all employees that make less than Peter Hall.  */
SELECT first_name, last_name, salary
FROM employees
WHERE salary < (SELECT salary
                    FROM employees
                        WHERE first_name = 'Peter'
                            AND last_name = 'Hall')
ORDER BY salary
LIMIT 10;

/* 9.) Display all the employees in the same department as Lisa Ozer. */
SELECT *
FROM departments
LIMIT 5;

SELECT first_name, last_name, department_name
FROM employees e
LEFT JOIN departments d       
ON e.department_id = d.department_id
WHERE e.department_id = (SELECT department_id
                            FROM employees
                            WHERE first_name = 'Lisa'
                                AND last_name = 'Ozer')
ORDER BY first_name; 

 /* 10.) Display all the employees in the same department as Martha Sullivan and that make more than TJ Olson.  */
 SELECT first_name, last_name, department_name, salary
 FROM employees e    
 LEFT JOIN departments d  
 ON e.department_id = d.department_id 
 WHERE e.department_id = (SELECT department_id
                            FROM employees
                                WHERE first_name = 'Martha'
                                    AND last_name = 'Sullivan')
AND salary > (SELECT salary
                FROM employees
                    WHERE first_name = 'TJ'
                        AND last_name = 'Olson')
ORDER BY salary DESC;  

/* 11.) Display all the departments that exist in the departments table that are not in the employees’ table. 
Do not use a where clause */
SELECT department_id, department_name
FROM departments 
WHERE department_id NOT IN (SELECT )
ORDER BY department_name;