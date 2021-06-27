--Practice 2-1

--TASK 1
--1.
SELECT la-st_name, job_id, salary AS Sal
FROM employees;
--2.
SELECT *
FROM JOBS;
--3.
SELECT employee_id, last_name, salary * 12 AS ANNUAL_SALARY
FROM employees;

--TASK 2
--4.
DESCRIBE departments;
SELECT *
FROM departments;
--5
DESCRIBE EMPLOYEES;
SELECT *
FROM employees;
--6
SELECT UNIQUE job_id
from EMPLOYEES;

--TASK 3
--7
SELECT employee_id AS "Emp #", last_name AS Employee, job_id AS "Job", hire_date AS STARTDATE
FROM EMPLOYEES;

--8
SELECT last_name ||', '|| job_id AS "Employee and Title"
FROM employees;

--9
SELECT employee_id ||','|| first_name ||', ' ||
last_name ||','|| email ||', ' ||
phone_number ||','|| hire_date ||', ' ||
job_id ||','|| salary ||', ' ||
commission_pct ||','|| manager_id ||', ' ||
department_id AS THE_OUTPUT
FROM employees;

