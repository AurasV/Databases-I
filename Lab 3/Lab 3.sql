1.
SELECT last_name || ' earns ' || TO_CHAR(salary) || ' monthly but wants ' || TO_CHAR(salary * 3) || '.' AS "Dream Salaries"
FROM employees;

2.
SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission') AS COMM
FROM employees;

3.
SELECT job_id, COUNT(*) AS number_of_people
FROM employees
GROUP BY job_id;

4.
SELECT MAX(salary) - MIN(salary) AS DIFFERENCE
FROM employees;

5.
SELECT e.last_name, department_id, d.department_name
FROM employees e
JOIN departments d USING (department_id);

6.
SELECT e1.last_name AS "Employee", 
       e1.employee_id AS "Emp#", 
       e2.last_name AS "Manager", 
       e2.employee_id AS "Mgr#"
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.employee_id;

7.
SELECT w.last_name AS "Employee", 
       w.employee_id AS "Emp#", 
       m.last_name AS "Manager", 
       m.employee_id AS "Mgr#"
FROM employees w
LEFT OUTER JOIN employees m ON w.manager_id = m.employee_id;

8.

SELECT DISTINCT e1.employee_id, e1.last_name
FROM employees e1
JOIN employees e2 ON e1.department_id = e2.department_id
WHERE e2.last_name LIKE '%u%'

9.
SELECT e.last_name, e.department_id, e.job_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.location_id = 1700;

10.
SELECT e.department_id, e.last_name, e.job_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Executive';