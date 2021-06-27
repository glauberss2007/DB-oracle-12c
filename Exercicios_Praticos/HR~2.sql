--Practice 4-1

--Task 
--1.
SELECT sysdate
FROM dual;

--2.
SELECT employee_id, last_name, salary, salary*1.155 AS NewSalary
FROM employees;

--3,4
SELECT employee_id, last_name, salary, salary*1.155 AS NewSalary, (salary*1.155 - salary) AS Increase
FROM employees;

--5
SELECT INITCAP(last_name), LENGTH(last_name)
FROM employees
WHERE last_name LIKE '%A%' or last_name LIKE '%M%' OR last_name LIKE  '%J%';

SELECT INITCAP(last_name), LENGTH(last_name)
FROM employees
WHERE last_name LIKE INITCAP('%&primieiraLetra%');

--6
SELECT INITCAP(last_name), MONTHS_BETWEEN(sysdate,hire_date) as MONTHS_WORKED
FROM employees
ORDER BY MONTHS_WORKED;

SELECT INITCAP(last_name), LPAD(salary, 15, '$')
FROM employees;

SELECT last_name,
       rpad(' ', salary/1000, '*') as EMPLOYEES_AND_THEIR_SALARIES
FROM employees
ORDER BY salary DESC;

SELECT INITCAP(last_name), (sysdate-hire_date) as TENURE
FROM employees
WHERE DEPARTMENT_ID = 90;

