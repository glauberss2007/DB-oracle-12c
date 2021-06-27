--5.1 Using Conversion Functions and Conditional Expressions

--1
SELECT last_name || ' earns '
       || TO_CHAR(salary, 'fm$99,999.00')
       || ' monthly but wants '
       || TO_CHAR(salary * 3, 'fm$99,999.00')
       || '.' AS "Dream Salaries"
FROM employees;

--2
SELECT last_name, TO_CHAR(hire_date, 'DD/MON/YY'), 
       TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'Segunda'),
       'fmDay, "the" Ddspth "of" Month, YYYY') AS REVIEW
FROM employees;

--3
SELECT last_Name, NVL2(COMMISSION_PCT, TO_CHAR(commission_pct),
       'No commission') AS COMM
FROM employees;

--4
SELECT last_name, job_id,
       CASE job_id WHEN 'AD_PRES' THEN 'A'
                   WHEN 'ST-MAN' THEN 'B'
                   WHEN 'IT_PROG' THEN 'C'
                   WHEN 'SA_REP' THEN 'D'
                   WHEN 'ST_CLERK' THEN 'E'
       ELSE       '0' END AS GRADE
FROM employees
ORDER BY job_id;

--5
SELECT last_name, job_id,
       (CASE WHEN job_id = 'AD_PRES' THEN 'A'
             WHEN job_id = 'ST_MAN' THEN 'B'
             WHEN job_id = 'IT_PROG' THEN 'C'
             WHEN job_id = 'SA_REP' THEN 'D'
             WHEN job_id = 'ST_CLERK' THEN 'E'
             ELSE '0'
        END) AS GRADE
        FROM employees
        ORDER BY job_id;

--6
SELECT last_name, job_id,
      DECODE(job_id,'AD_PRES', 'A',
                    'ST_MAN','B',
                    'IT_PROG','C',
                    'SA_REP','D',
                    'ST_CLERK','E',
            '0') AS GRADE
FROM employees
ORDER BY job_id;



       
       