1.
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date ASC;

2.
SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

3.
SELECT last_name,
       ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) AS MONTHS_WORKED
FROM employees
ORDER BY MONTHS_WORKED;

4.
SELECT last_name,
       RPAD('*', FLOOR(salary/1000), '*') AS EMPLOYEES_AND_THEIR_SALARIES
FROM employees
ORDER BY salary DESC;

5.
SELECT last_name,
       LPAD(TO_CHAR(salary), 15, '$') AS SALARY
FROM employees;

6.
SELECT last_name,
       TRUNC((SYSDATE - hire_date)/7) AS TENURE
FROM employees
WHERE department_id = 90
ORDER BY TENURE DESC;
