--Practice 2 

--1 is TRUES
SELECT last_name, job_id, salary AS Sal
FROM employees;

--2 is FALSE
SELECT *
FROM job_grades;

--3
SELECT employee_id, last_name, salary*12 AS "ANNUAL SALARY"
FROM employees;

--4
DESC departments;

--5 a
DESCRIBE employees;

--5 b
SELECT employee_id, last_name, job_id, hire_date AS "Start Date"
FROM employees;

--6 
SELECT DISTINCT job_id
FROM employees;

--7
SELECT employee_id AS "Emp #", last_name "Employee", job_id "Job", hire_date "Start Date"
FROM employees;

--8
SELECT last_name || ', ' || job_id AS "Employee and Title"
FROM EMPLOYEES;

--9
SELECT EMPLOYEE_ID || q'[, ]' || FIRST_NAME || ', ' || LAST_NAME || ', ' || EMAIL
  || ', ' || PHONE_NUMBER || ', ' || HIRE_DATE || ', ' || JOB_ID || ', ' || SALARY
  || ', ' || COMMISSION_PCT || ', ' || MANAGER_ID || ', ' || DEPARTMENT_ID AS "The_OUTPUT"
from employees;

select * from EMPLOYEES;