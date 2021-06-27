--Practice 3-1

--TASK 1

--1
SELECT last_name, salary
FROM EMPLOYEES
WHERE salary >12000;

--2
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;

--3
SELECT last_name, salary
FROM EMPLOYEES
WHERE salary not between 5000 and 12000;

--4
SELECt last_name, job_id, hire_date
FROM employees
WHERE last_name LIKE 'Matos'
OR last_name LIKE 'Taylor'
ORDER BY hire_date;

--5
SELECT last_name, department_id
FROM employees
WHERE department_id = 20
OR department_id = 50
ORDER BY last_name;

--6
SELECT last_name AS Employee, salary AS "Monthly Salary"
FROM EMPLOYEES
WHERE salary BETWEEN 5000 AND 12000
AND DEPARTMENT_ID = 20
OR DEPARTMENT_ID = 50;

--7
SELECT last_name, hire_date
FROM employees
WHERE hire_date >= '01-JAN-06' AND hire_date <= '01-JAN-07';

--8
SELECT last_name, job_id
FROM employees
WHERE manager_id is null;

--9
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY 2 DESC, 3 DESC;

--10
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
AND salary > &salary_value
ORDER BY 2 DESC, 3 DESC;

--11
SELECT employee_ID, last_name, salary, department_id
FROM employees
WHERE MANAGER_ID = &manager_id;

--12
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

--13
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%e%';

--14
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP' or job_id = 'ST_CLERK'
AND salary <> 2500
AND salary <> 3500
AND salary <> 7000;

--15
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct = 0.2;


