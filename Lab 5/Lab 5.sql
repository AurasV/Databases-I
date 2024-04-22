-- 1:
SELECT last_name, department_id, salary
FROM employees
WHERE (department_id, salary) IN (
  SELECT department_id, salary
  FROM employees
  WHERE commission_pct IS NOT NULL
);

-- 2:
SELECT e.last_name, e.hire_date, e.salary
FROM employees e
WHERE e.salary = (
    SELECT salary 
    FROM employees 
    WHERE last_name = 'Kochhar'
) AND e.manager_id = (
    SELECT manager_id 
    FROM employees 
    WHERE last_name = 'Kochhar'
);

-- 3:
SELECT e.employee_id, e.last_name, e.department_id
FROM employees e
WHERE e.department_id IN (
  SELECT d.department_id
  FROM departments d
  WHERE d.location_id IN (
    SELECT l.location_id
    FROM locations l
    WHERE l.city LIKE 'T%'
  )
);