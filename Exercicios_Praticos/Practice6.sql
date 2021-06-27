--6.1: Reporting agregated data by using group function
--1. True 
--2. False
--3. True

--4
SELECT MAX(salary) AS "Maximum", MIN(salary) AS "Minimun",
       SUM(salary) "Sum", ROUND(AVG(salary)) AS "Average"
FROM EMPLOYEES;

--5
SELECT job_id, MAX(salary) AS "Maximum", MIN(salary) AS "Minimun",
       SUM(salary) "Sum", ROUND(AVG(salary)) AS "Average"
FROM EMPLOYEES
GROUP BY job_id;

--6
SELECT job_id, COUNT() AS "COUNT(*)"
FROM employees
WHERE job_id = '&job_id'
GROUP BY job_id;

--7
SELECT COUNT(DISTINCT MANAGER_ID) AS "Number of Managers"
FROM employees;

--8
SELECT (MAX(salary) - MIN(salary))
FROM employees;

--9
SELECT manager_id, MIN(salary)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;

--10
SELECT COUNT(employee_id) AS "TOTAL", 
       SUM(DECODE(TO_CHAR(hire_date, 'yyyy'),2005,1,0))"2005",
       SUM(DECODE(TO_CHAR(hire_date, 'yyyy'),2006,1,0))"2006",
       SUM(DECODE(TO_CHAR(hire_date, 'yyyy'),2007,1,0))"2007",
       SUM(DECODE(TO_CHAR(hire_date, 'yyyy'),2008,1,0))"2008"
FROM EMPLOYEES;

--11
SELECT job_id AS "JOB", 
               SUM(DECODE(department_id,20, salary)) AS "Dept 20",
               SUM(DECODE(department_id,50, salary)) AS "Dept 50",
               SUM(DECODE(department_id,80, salary)) AS "Dept 80",
               SUM(DECODE(department_id,90, salary)) AS "Dept 90",
               SUM(salary)
FROM employees
GROUP BY job_id;
