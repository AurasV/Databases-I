1. 
SELECT last_name, job_id, salary AS Sal
FROM employees;

2.
SELECT employee_id, last_name, salary * 12 AS "ANNUAL SALARY"
FROM employees;

4.
SELECT
  EMPLOYEE_ID || ',' ||
  FIRST_NAME || ',' ||
  LAST_NAME || ',' ||
  EMAIL || ',' ||
  PHONE_NUMBER || ',' ||
  HIRE_DATE || ',' ||
  JOB_ID || ',' ||
  SALARY || ',' ||
  COMMISSION_PCT || ',' ||
  MANAGER_ID || ',' ||
  DEPARTMENT_ID AS THE_OUTPUT
FROM EMPLOYEES;