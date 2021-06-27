SELECT last_name, salary, 10*(salary+100)
FROM employees;

--Defining a null value
SELECT last_name, job_id, salary, commission_pct
FROM employees;

--Null value in Arithmetic Expression
SELECT last_name, 12*salary*commission_pct
FROM employees;

--Using column aliases
SELECT last_name AS Name, commission_pct Comm
FROM employees;

SELECT last_name "Name", salary*12 "Annual Salary"
FROM employees;

--Concatenation Operator
SELECT last_name || job_id "Employees"
FROM employees;

--Using Literal Character Strings
SELECT last_name || ' is a ' || job_id AS "Employee Details"
FROM employees;

--Alternative Quote (q) Operator
SELECT department_name || q'[ Department's Manager Id: ]' || manager_id AS "Department and Manager"
FROM departments;

--Duplicate Rows
SELECT DISTINCT department_id
FROM employees;

--Displaying Table Structure
DESCRIBE departments;

--Using the DESCRIBE Command
DESCRIBE employees;

