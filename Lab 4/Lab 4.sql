-- 1:
SELECT department_id
FROM employees
MINUS
SELECT department_id
FROM employees
WHERE job_id = 'ST_CLERK';

-- 2:
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE job_id = 'SA_REP'
INTERSECT
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 80;

-- 3:
UPDATE employees
SET salary = 1000
WHERE salary < 900;

-- 4:
SELECT *
FROM employees
WHERE EMPLOYEE_ID = 100;

-- 5:
CREATE TABLE DEPT (
  ID NUMBER(7) PRIMARY KEY,
  NAME VARCHAR2(25)
);

-- 6:
ALTER TABLE EMPLOYEES2
ADD (JOB_ID VARCHAR2(10));

-- 7:
CREATE VIEW DEPT80
AS SELECT employee_id AS EMPNO,
          last_name AS EMPLOYEE,
          department_id AS DEPTNO
FROM employees
WHERE department_id = 80
WITH CHECK OPTION CONSTRAINT emp_dept_80;

-- 8:
UPDATE DEPT80
SET DEPTNO = 50
WHERE EMPLOYEE = 'Abel';